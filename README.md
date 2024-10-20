# Next-flask-crud-app


Here are the curl commands for each operation.

### 1. Get All Users

```sh
curl -X GET http://flask-api.com/api/flask/users -H "Content-Type: application/json"
```



### 2. Create Users

**Create User 1:**

```sh
curl -X POST http://flask-api.com/api/flask/users -H "Content-Type: application/json" -d '{"name": "Alice", "email": "alice@example.com"}'
```

**Create User 2:**

```sh
curl -X POST http://flask-api.com/api/flask/users -H "Content-Type: application/json" -d '{"name": "Bob", "email": "bob@example.com"}'
```

**Create User 3:**

```sh
curl -X POST http://flask-api.com/api/flask/users -H "Content-Type: application/json" -d '{"name": "Charlie", "email": "charlie@example.com"}'
```



### 3. Update a User

**Update User with ID 3:**

```sh
curl -X PUT http://flask-api.com/api/flask/users/3 -H "Content-Type: application/json" -d '{"name": "Alice Updated", "email": "alice.updated@example.com"}'
```


### 4. Get a User by ID

**Get User with ID 3:**

```sh
curl -X GET http://flask-api.com/api/flask/users/3 -H "Content-Type: application/json"
```



### 5. Delete a User

**Delete User with ID 3:**

```sh
curl -X DELETE http://flask-api.com/api/flask/users/3 -H "Content-Type: application/json"
```



This sequence of curl commands will help you perform the required operations on your Flask API. Make sure to replace `flask-api.com` with the actual host and port where your Flask application is running if different.