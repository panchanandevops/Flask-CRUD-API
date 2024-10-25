Here's your customized README based on the template format provided:

---

# Flask CRUD API

The **Flask CRUD API** provides CRUD operations to manage user data, along with a robust CI/CD pipeline using GitHub Actions and Kubernetes deployment capabilities with Argo CD. Follow these instructions to interact with the API, deploy it on Kubernetes, and set up continuous integration and monitoring.

---

## API Endpoints and `curl` Commands

### 1. **POST**: Create New Users

- **Endpoint**: `POST /api/flask/users`
- **Description**: Adds a new user with attributes such as `name` and `email`.

#### Examples:
```sh
# Create user "Alice"
curl -X POST http://flask-api.com/api/flask/users \
-H "Content-Type: application/json" \
-d '{
  "name": "Alice",
  "email": "alice@example.com"
}'

# Create user "Bob"
curl -X POST http://flask-api.com/api/flask/users \
-H "Content-Type: application/json" \
-d '{
  "name": "Bob",
  "email": "bob@example.com"
}'

# Create user "Charlie"
curl -X POST http://flask-api.com/api/flask/users \
-H "Content-Type: application/json" \
-d '{
  "name": "Charlie",
  "email": "charlie@example.com"
}'
```

### 2. **GET**: Retrieve All Users

- **Endpoint**: `GET /api/flask/users`
- **Description**: Retrieves a list of all users.

```sh
curl -X GET http://flask-api.com/api/flask/users -H "Content-Type: application/json"
```

### 3. **PUT**: Update User Information

- **Endpoint**: `PUT /api/flask/users/:id`
- **Description**: Updates a specific user's details based on their ID.

```sh
curl -X PUT http://flask-api.com/api/flask/users/3 \
-H "Content-Type: application/json" \
-d '{
  "name": "Alice Updated",
  "email": "alice.updated@example.com"
}'
```

### 4. **GET**: Retrieve a User by ID

- **Endpoint**: `GET /api/flask/users/:id`
- **Description**: Retrieves details of a user by their ID.

```sh
curl -X GET http://flask-api.com/api/flask/users/3 -H "Content-Type: application/json"
```

### 5. **DELETE**: Remove a User

- **Endpoint**: `DELETE /api/flask/users/:id`
- **Description**: Deletes a specific user by their ID.

```sh
curl -X DELETE http://flask-api.com/api/flask/users/3 -H "Content-Type: application/json"
```

---

## CI/CD Pipeline with GitHub Actions

The CI/CD pipeline automates the building, testing, and deployment of the Dockerized Flask API to Docker Hub and Kubernetes.

### Workflow Overview: `build-docker-image.yaml`

- **Triggers**: Runs on tag pushes (e.g., `v1.0.0`) and changes to relevant directories.
- **Workflow Steps**:
  1. **Checkout & Setup**: Pulls the code and configures Docker Buildx.
  2. **Build & Push Docker Image**: Builds the Flask API image, tags it, and pushes it to Docker Hub.
  3. **Update Deployment YAML**: Edits the Kubernetes deployment YAML to use the new image tag.
  4. **Create Pull Request**: Opens a PR to review and merge the updated image tag.

### Required GitHub Secrets

- `DOCKER_USERNAME`: Docker Hub username.
- `DOCKER_PASSWORD`: Docker Hub password.
- `PAT_TOKEN`: GitHub Personal Access Token to create pull requests.

---

## Deployment Using Argo CD

Argo CD enables seamless deployment management of the Flask API on Kubernetes with automated synchronization policies.

### Argo CD Applications

1. **Helm-based Deployment**:
   - **Config File**: `helm.yaml`
   - **Source**: `Deploy/flask-helm-chart/`
   - **Destination**: `dev` namespace
   - **Sync Policy**: Automated self-healing and pruning

2. **Kubernetes Manifest Deployment**:
   - **Config File**: `k8s-manifest.yaml`
   - **Source**: `Deploy/k8s/manifest`
   - **Sync Policy**: Self-healing and pruning enabled

3. **Kustomize-based Deployment**:
   - **Config File**: `kustomize.yaml`
   - **Source**: `Deploy/kustomize/overlays/prod`
   - **Sync Policy**: Automatic sync with self-healing and pruning

### Deploying with Argo CD

1. Clone the repository and apply the Argo CD configurations:
   ```bash
   git clone https://github.com/panchanandevops/Flask-CRUD-API.git
   kubectl apply -f path/to/argo-application.yaml
   ```

---

## Observability and Monitoring Stack

This Flask API integrates observability tools like **Grafana**, **Prometheus**, and **Loki** to monitor, collect, and analyze performance and log data.

- **Grafana**: Visualizes time-series metrics and system health, with customizable dashboard alerts.
- **Prometheus**: Collects and stores time-series data, facilitating analysis and alerts for critical events.
- **Loki**: Handles log aggregation, enabling efficient querying and debugging.

This monitoring setup supports application stability and allows for proactive issue diagnosis.