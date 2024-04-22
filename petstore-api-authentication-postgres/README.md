# petstore-api-authentification-posgres (APICHAMP Sample)

| Sample                                 | Endpoints | Datasources | Authentication | Infos                                                                           |
|----------------------------------------|-----------|-------------|----------------|---------------------------------------------------------------------------------|
| petstore-api-authentification-postgres | 3         | Postgres    | Basic Auth     | Simple Get and Post with a basic auth security layer                            |

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

## Getting Started

Open the terminal or your shell and run the following command:

```docker-compose up```

This command will not only launch the APICHAMP Docker container but also provide a demo 
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /pets`: Retrieves a list of pets from the database. Optionally, you can use the `limit` query parameter to specify the number of pets to fetch. The response is mapped to the `Pet` model.

2. `POST /pets`: Creates a new pet record in the database using data provided in the request body. The response contains details about the created pet, retrieved through the `getPet` fulfillment. The response is mapped to the `Pet` model.

3. `GET /pets/{petId}`: Retrieves details of a specific pet identified by `petId` from the database. The response is mapped to the `Pet` model.

## Authentication

Basic authentication is enabled for this instance. You must provide the correct username and password (`demo` and `demo`, respectively) in the request headers to access the APIs.

## Data Source

The instance is connected to a PostgreSQL database (`postdb`) using the provided URL, username, and password.

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APICHAMP-ing! 🚀