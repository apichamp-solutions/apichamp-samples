# contact-sync-api-hubspot-rest (APICHAP Sample)

| Sample                                 | Endpoints | Datasources                | Authentication       | Infos                                                                                                   |
|----------------------------------------|-----------|----------------------------|----------------------|---------------------------------------------------------------------------------------------------------|
 contact-sync-api-hubspot-rest           | 1         | Hubspot API <br/> mariadb  | Bearer Hubspot Token | Endpoint will search for a contact from your hubspot using email and sync them into the local database. |

> **Security** To simplify this demo you are able to pass the Hubspot Bearer Token directly in the request. 
> The request itself is not secured.

## Documentation
Find the full documentation here: [docs.apichap.com](https://docs.apichap.com)

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

> **Use this sample with your own Hubspot API Token**: In order to use this sample you must provide the GET /contact request with a hubspot API token. Get your token from [Hubspot](https://developers.hubspot.com/docs/api/oauth/tokens).

## Getting Started

Open the terminal or your shell and run the following command:

```docker compose up```

This command will not only launch the APICHAP Docker container but also provide a demo
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /contact`: This endpoint searches for a contact by email on hubspot and stores them in your database. Use a Hubspot Bearer Token for Authorization against the hubspot API.
2. `GET /contact/sync`: Get all contacts from hubspot and sync them into the local database. Use a Hubspot Bearer Token for Authorization against the hubspot API.

## Data Source

The instance is connected to two datasources: 

- The Hubspot REST-API to retrieve the contacts
- A mariadb database which is used to store the contacts from hubspot. 

### Database Tables (mariadb)

#### events

Empty by default. When you request an email contact on hubspot it will create a contact entry.

| id | firstname | lastname                 | email                  | update_time |
|----|-----------|--------------------------|------------------------|-------------|
| 1  | Maria     | Johnson (Sample Contact) | emailmaria@hubspot.com | TIMESTAMP   |

#### sync_history

Not used in this sample yet

| id | status | message | last_sync |
|----|--------|---------|-----------|

## Debug Mode

Debug mode is enabled, allowing you to test and debug your endpoints using the Swagger page at `http://localhost:8080/swagger-ui.html`.

Feel free to use this configuration as a starting point for building your event management API. Customize it further based on your specific requirements and database schema. Enjoy using APICHAP! 🎉