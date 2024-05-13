# petstore-api-authentication-postgres (APICHAMP Sample)

| Sample                                 | Endpoints | Datasources | Authentication | Infos                                                                           |
|----------------------------------------|-----------|-------------|----------------|---------------------------------------------------------------------------------|
| petstore-api-authentication-postgres   | 3         | Postgres    | Basic Auth     | Simple Get and Post with a basic auth security layer                            |

## Documentation
Find the full documentation here: [docs.apichamp.com](https://docs.apichamp.com)

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

## Getting Started

Open the terminal or your shell and run the following command:

```docker compose up```

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

### Database Tables

#### pets

| id | name     | age | type     | breed            | color    | weight  | height | date_of_birth | created_at   | updated_at   |
|----|----------|-----|----------|------------------|----------|---------|--------|---------------|--------------|--------------|
| 1  | Whiskers | 4   | Cat      | Scottish Fold    | Gray     | 3.50    | 9.50   | 2017-06-12    | Create_Time  | Updated_time |
| 2  | Barkley  | 2   | Dog      | Golden Retriever | Golden   | 25.30   | 22.00  | 2024-04-26    | Create_Time  | Updated_time |
| 3  | Fluffy   | 1   | Rabbit   | Lionhead         | White    | 1.20    | 7.80   | 2019-02-05    | Create_Time  | Updated_time |
| 4  | Spike    | 5   | Hedgehog | null             | Brown    | 0.80    | 4.50   | 2016-10-27    | Create_Time  | Updated_time |
| 5  | Bubbles  | 3   | Fish     | Goldfish         | Orange   | 0.10    |        | 2020-08-14    | Create_Time  | Updated_time |

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APICHAMP-ing! 🚀