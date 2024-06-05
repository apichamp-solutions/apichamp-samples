# image-upload-api-mariadb-rest

| Sample                         | Endpoints | Datasources | Authentication | Infos                        |
|--------------------------------|-----------|-------------|----------------|------------------------------|
| image-upload-api-mariadb-rest  | 1         | maria       | -              | Single & Simple GET endpoint |

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

1. `POST /image`: Upload an image as a multipart file to the server.

## Data Source

The instance is connected to a MariaDB database (`demodb`) using the provided URL, username, and password.
Secondly, the instance also sends a multipart request to simulate you saving the image on your filestorage
provider over a restapi.

> The restapi currently sends a request to www.example.com. Replace this url with your filestorage provider or use
> an online mocking tool to test the sample.

### Database Tables

#### image

| id | filename       | filesize        |
|----|----------------|-----------------|

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page
at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APICHAMP-ing! 🚀