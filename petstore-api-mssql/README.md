# petstore-api-mssql (APICHAP Sample)

| Sample                                 | Endpoints | Datasources | Authentication | Infos                                                                           |
|----------------------------------------|-----------|-------------|----------------|---------------------------------------------------------------------------------|
| petstore-api-mssql                     | 5         | MSSQL       | -              | Petstore (Get, Save) with multiple SQL table relations in MSSQL                 |

## Documentation
Find the full documentation here: [docs.apichap.com](https://docs.apichap.com)

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

> :warning: **You must accept the licence terms of MSSQL**: Accept the ACCEPT_EULA in your docker-compose.yaml file.
```
# Accept the licence terms in the docker-compose.yaml from mssql in order to start this database. Use ACCEPT_EULA to accept them.
ACCEPT_EULA: "Y"
```


## Getting Started

Open the terminal or your shell and run the following command:

```docker compose up```

This command will not only launch the APICHAP Docker container but also provide a demo
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /pet/findByStatus`: Finds pets by status. This endpoint allows you to retrieve pets based on their status. You can provide multiple status values separated by commas as query parameters. The response is an array of pets mapped to the Pet model.

2. `GET /pet/findByTags`: Finds pets by tag. This endpoint allows you to retrieve pets based on tags. You can provide multiple tags separated by commas as query parameters. The response is an array of pets mapped to the Pet model.

3. `GET /pet/{petId}`: Find pet by ID. This endpoint allows you to retrieve details about a specific pet identified by its ID. The response will contain the details of the pet mapped to the Pet model.

4. `POST /pet`: Add a new pet to the store. This endpoint allows you to add a new pet to the store. The request body should contain the details of the pet to be added, following the Pet model. Upon successful addition, the response will contain details about the created pet.

5. `DELETE /pet/{petId}`: Deletes a pet. This endpoint allows you to delete a pet from the store based on its ID.

## Data Source

The instance is connected to a MSSQL database (`pets`) using the provided URL, username, and password.

### Database Tables

#### pets

| id | nickname  | category_id | status    |
|----|-----------|-------------|-----------|
| 1  | Bello     | 1           | available |
| 2  | Lucky     | 2           | available |
| 3  | Annie     | 3           | pending   |
| 4  | Ratti     | 4           | sold      |

#### pets_category

Pet category are preset in the database. If you create a new pet choose a category from the list.

| id | label |
|----|-------|
| 1  | Dog   |
| 2  | Cat   |
| 3  | Bird  |
| 4  | Mouse |
| 5  | Horse |

#### pets_tags

You are able to add custom tags for your pet. NOT a preset of hardcoded tags.

| id | pet_id | name   |
|----|--------|--------|
| 1  | 1      | cute   |
| 2  | 1      | noisy  |
| 3  | 2      | miauw  |
| 4  | 3      | yellow |
| 5  | 4      | fast   |
| 6  | 1      | brows  |

#### pets_images

| pet_id | imageurl                       |
|--------|--------------------------------|
| 1      | https://www.example.com/image1 |

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APICHAP-ing! 🚀