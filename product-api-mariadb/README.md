# product-api-mariadb

| Sample              | Endpoints | Datasources | Authentication | Infos                        |
|---------------------|-----------|-------------|----------------|------------------------------|
| product-api-mariadb | 1         | mariab      | -              | Single & Simple GET endpoint |

## Documentation

Find the full documentation under: [docs.apichamp.com](https://docs.apichamp.com)

## Requirements:

- [Docker Client](https://docs.docker.com/get-started/overview/)

## Getting Started

Open the terminal or your shell and run the following command:

```docker compose up```

This command will not only launch the APICHAMP Docker container but also provide a demo
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /products`: Retrieves a list of products from the database. You can filter products by specifying the `category`
   query parameter. The response is mapped to the `ProductModel` model.

## Data Source

The instance is connected to a MariaDB database (`demodb`) using the provided URL, username, and password.

### Database Tables

#### product

| id | name           | details         | category | price | stock |
|----|----------------|-----------------|----------|-------|-------|
| 1  | Test Product A | Longer Text ... | Tablet   | 1.2   | 20    |
| 2  | Test Product B | Longer Text ... | Laptop   | 3     | 20    |
| 3  | Test Product C | Longer Text ... | Laptop   | 1.9   | 20    |
| 4  | Test Product D | Longer Text ... | Computer | 1.8   | 20    |

#### product_image

Pet category is fix. If you create a new pet choose a category from the list.

| id | product_id | imageurl            | thumburl           |
|----|------------|---------------------|--------------------|
| 1  | 1          | https://image.com   | https://thumb.com  |
| 2  | 1          | https://ok.com      | https://thumb2.com |
| 3  | 2          | https://welcome.com | https://thumb3.com |

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page
at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APICHAMP-ing! 🚀