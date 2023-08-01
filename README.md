# API Documentation

## Overview

This API provides a simple way to create, read, update, and delete (CRUD) resources.

## Resources

The following resources are available:

* **Users**

## HTTP Methods

The following HTTP methods are supported for each resource:

* **GET** - Retrieve a resource
* **PUT** - Update a resource
* **POST** - Create a new resource
* **DELETE** - Delete a resource

## Examples

### Get a User

GET /users/2

This will retrieve the user with the ID 2.
`response:`
```azure
{
    "id": 2,
    "name": "John Doe",
    "email": "jdoe@mail.com",
    "phone": "9877900087",
    "address": "Silkroad "
}
```

### Create a User

This will create a new user. The `request body` must contain the following JSON data:
```azure
{
    "name":"John Doe",
    "email": "jdoe@mail.com",
    "phone": "9877900087",
    "address": "Silkroad "
}
```

`response`

```azure
{
    "id": 2,
    "name": "John Doe",
    "email": "jdoe@mail.com",
    "phone": "9877900087",
    "address": "Silkroad "
}
```

### Update a user

PUT /user/2


This will update the address with the ID 2. The request body must contain the following JSON data:

```azure
{
"name": "John Doe",
"email": "jdoe@mail.com",
"phone": "9877900087",
"address": "Richmont Lane 201 "
}
```
`response`
```azure
{
    "id": 2,
    "name": "John Doe",
    "email": "jdoe@mail.com",
    "phone": "9877900087",
    "address": "Richmont Lane 201 "
}
```
### Delete a User

DELETE /users/2


This will delete the user with the ID 2.
```azure
{
    "id2": "is deleted"
}
```

## Error Handling

If an error occurs, the API will return a JSON response with the following structure:

```azure
{
"error": "The error message"
}
```