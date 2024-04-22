# petstore-api-mssql (APICHAMP Sample)

| Sample                                 | Endpoints | Datasources | Authentication | Infos                                                                           |
|----------------------------------------|-----------|-------------|----------------|---------------------------------------------------------------------------------|
| petstore-api-mssql                     | 5         | MSSQL       | -              | Petstore (Get, Save) with multiple SQL table relations in MSSQL                 |

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

You must accept the MSSQL terms in order to use a mircosoft SQL instance. If you want to accept simply change the docker-compose.yaml file:
```
# Accept the licence terms from mssql in order to start this database. Use ACCEPT_EULA to accept them.
ACCEPT_EULA: "Y"
```

## Getting Started

Open the terminal or your shell and run the following command:

```docker-compose up```

This command will not only launch the APICHAMP Docker container but also provide a demo
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /pet/findByStatus`: Finds pets by status. This endpoint allows you to retrieve pets based on their status. You can provide multiple status values separated by commas as query parameters. The response is an array of pets mapped to the Pet model.

2. `GET /pet/findByTags`: Finds pets by tag. This endpoint allows you to retrieve pets based on tags. You can provide multiple tags separated by commas as query parameters. The response is an array of pets mapped to the Pet model.

3. `GET /pet/{petId}`: Find pet by ID. This endpoint allows you to retrieve details of a specific pet identified by its ID. The response will contain the details of the pet mapped to the Pet model.

4. `POST /pet`: Add a new pet to the store. This endpoint allows you to add a new pet to the store. The request body should contain the details of the pet to be added, following the Pet model. Upon successful addition, the response will contain details about the created pet.

5. `DELETE /pet/{petId}`: Deletes a pet. This endpoint allows you to delete a pet from the store based on its ID.

## Data Source

The instance is connected to a MSSQL database (`pets`) using the provided URL, username, and password.

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APICHAMP-ing! 🚀