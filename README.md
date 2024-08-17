# Next-flask-crud-app

docker pull k8s.gcr.io/ingress-nginx/controller:v1.10.1
minikube image load k8s.gcr.io/ingress-nginx/controller:v1.10.1

Sure! Here are the curl commands for each operation.

### 1. Get All Users

```sh
curl -X GET http://panchanandevops.com:30452/api/flask/users -H "Content-Type: application/json"
```



### 2. Create Users

**Create User 1:**

```sh
curl -X POST http://panchanandevops.com:30452/api/flask/users -H "Content-Type: application/json" -d '{"name": "Alice", "email": "alice@example.com"}'
```

**Create User 2:**

```sh
curl -X POST http://panchanandevops.com:30452/api/flask/users -H "Content-Type: application/json" -d '{"name": "Bob", "email": "bob@example.com"}'
```

**Create User 3:**

```sh
curl -X POST http://panchanandevops.com:30452/api/flask/users -H "Content-Type: application/json" -d '{"name": "Charlie", "email": "charlie@example.com"}'
```



### 3. Update a User

**Update User with ID 3:**

```sh
curl -X PUT http://panchanandevops.com:30452/api/flask/users/3 -H "Content-Type: application/json" -d '{"name": "Alice Updated", "email": "alice.updated@example.com"}'
```


### 4. Get a User by ID

**Get User with ID 3:**

```sh
curl -X GET http://panchanandevops.com:30452/api/flask/users/3 -H "Content-Type: application/json"
```



### 5. Delete a User

**Delete User with ID 3:**

```sh
curl -X DELETE http://panchanandevops.com:30452/api/flask/users/3 -H "Content-Type: application/json"
```



This sequence of curl commands will help you perform the required operations on your Flask API. Make sure to replace `panchanandevops.com:30452` with the actual host and port where your Flask application is running if different.