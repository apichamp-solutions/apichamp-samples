# APIchamp Sample Products

## Sample Learning Outcomes:

By following this sample, you will achieve the following learning outcomes:

- **API Development:**
    - Build a simple GET list and use different queries depending on a category filter.
    - Build a straightforward mapping.
- **Data Source:**
    - This sample will use a MariaDB datasource

## Getting Started

Open the terminal or your shell and run the following command:

```docker-compose up```

This will startup the apichamp dockercontainer as well with the including demo datasource. After your container is started you are able to test your API under:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /products`: Retrieves a list of products from the database. You can filter products by specifying the `category` query parameter. The response is mapped to the `ProductModel` model.

## Data Source

The instance is connected to a MariaDB database (`demodb`) using the provided URL, username, and password.

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to customize this configuration to suit your specific use case and data source. Happy APIchamp-ing! 🚀