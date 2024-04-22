# events-api-mariadb (APICHAMP Sample)

| Sample                                 | Endpoints | Datasources | Authentication | Infos                                                                           |
|----------------------------------------|-----------|-------------|----------------|---------------------------------------------------------------------------------|
| events-api-mariadb                     | 3         | mariadb     | -              | Simple Event-Server. Retrieve Events and attend until the event is fully booked |

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

## Getting Started

Open the terminal or your shell and run the following command:

```docker-compose up```

This command will not only launch the APICHAMP Docker container but also provide a demo
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /events`: Retrieves a list of events from the database. You can filter events by specifying the `startdate` and `enddate` query parameters. The response is mapped to the `EventModel` model, including the number of attendees and the maximum number of allowed attendees for each event.

2. `POST /events/attendees`: Adds a new attendee to an event. Before adding an attendee, the fulfillment first checks the maximum number of allowed attendees for the event. If the event is already fully booked, it returns a `409 Conflict` error. If the event doesn't exist, a `404 Not Found` error is returned.

## Data Source

The instance is connected to a MariaDB database (`mydatabase`) using the provided URL, username, and password.

Feel free to use this configuration as a starting point for building your event management API. Customize it further based on your specific requirements and database schema. Enjoy using APICHAMP! 🎉