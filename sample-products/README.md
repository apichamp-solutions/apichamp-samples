# APIchamp Sample Products

This is another sample configuration for an APIchamp instance that provides API endpoints related to products. The instance is connected to a MariaDB database using basic authentication for added security.

## Endpoints

1. `GET /products`: Retrieves a list of products from the database. You can filter products by specifying the `category` query parameter. The response is mapped to the `ProductModel` model.

## Data Source

The instance is connected to a MariaDB database (`demodb`) using the provided URL, username, and password.

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APIchamp-ing! 🚀