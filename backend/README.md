# Backend API

- [Backend API](#backend-api)
  - [Summary](#summary)
  - [`GET`](#get)
    - [`/read/allTasks`](#readalltasks)
    - [`/read/task/{id}`](#readtaskid)
  - [`POST`](#post)
    - [`/create/task`](#createtask)
  - [`PUT`](#put)
    - [`/update/task/{id}`](#updatetaskid)
    - [`/complete/task/{id}`](#completetaskid)
    - [`/incomplete/task/{id}`](#incompletetaskid)
  - [`DELETE`](#delete)
    - [`/delete/task/{id}`](#deletetaskid)

## Summary

| URL                     | Method   | Request Body               |
| ----------------------- | -------- | -------------------------- |
| `/read/allTasks`        | `GET`    | None                       |
| `/read/task/{id}`       | `GET`    | None                       |
| `/create/task`          | `POST`   | `{"description": <value>}` |
| `/update/task/{id}`     | `PUT`    | `{"description": <value>}` |
| `/complete/task/{id}`   | `PUT`    | None                       |
| `/incomplete/task/{id}` | `PUT`    | None                       |
| `/delete/task/{id}`     | `DELETE` | None                       |

## `GET`

### `/read/allTasks`

Example Response

```json
{
    "tasks": [
        {
            "id": 1,
            "description": "Take out the bins",
            "completed": "true"
        },
        {
            "id": 2,
            "description": "Do the washing up",
            "completed": "false"
        }
    ]
}
```

### `/read/task/{id}`

Path Parameters

| Parameter | Description                                |
| --------- | ------------------------------------------ |
| `{id}`    | ID for the task to query from the database |

Example Response

```json
{
    "id": 1,
    "description": "Take out the bins",
    "completed": "true"
}
```

## `POST`

### `/create/task`

Example Request

```json
{
    "description": "Take out the bins"
}
```

Example Response

```text
Added task with description: Take out the bins
```

## `PUT`

### `/update/task/{id}`

Path Parameters

| Parameter | Description                                |
| --------- | ------------------------------------------ |
| `{id}`    | ID for the task to query from the database |

Example Request

```json
{
    "description": "Do the washing up"
}
```

Example Response

```text
Updated task (ID: 1) with description: Take out the bins
```

### `/complete/task/{id}`

Path Parameters

| Parameter | Description                                |
| --------- | ------------------------------------------ |
| `{id}`    | ID for the task to query from the database |

Example Response

```text
Task with ID: 1 set to completed = False
```

### `/incomplete/task/{id}`

Path Parameters

| Parameter | Description                                |
| --------- | ------------------------------------------ |
| `{id}`    | ID for the task to query from the database |

Example Response

```text
Task with ID: 1 set to completed = True
```

## `DELETE`

### `/delete/task/{id}`

Path Parameters

| Parameter | Description                                |
| --------- | ------------------------------------------ |
| `{id}`    | ID for the task to query from the database |

Example Response

```text
Deleted task with ID: 1
```
