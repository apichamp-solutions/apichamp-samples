# events-api-mariadb (APICHAP Sample)

| Sample                                 | Endpoints | Datasources | Authentication | Infos                                                                           |
|----------------------------------------|-----------|-------------|----------------|---------------------------------------------------------------------------------|
| events-api-mariadb                     | 3         | mariadb     | -              | Simple Event-Server. Retrieve Events and attend until the event is fully booked |

## Documentation
Find the full documentation here: [docs.apichap.com](https://docs.apichap.com)

## Requirements:
- [Docker Client](https://docs.docker.com/get-started/overview/)

## Getting Started

Open the terminal or your shell and run the following command:

```docker compose up```

This command will not only launch the APICHAP Docker container but also provide a demo
data source. Once the container is up and running, you can begin testing your API by visiting:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /events`: Retrieves a list of events from the database. You can filter events by specifying the `startdate` and `enddate` query parameters. The response is mapped to the `EventModel` model, including the number of attendees and the maximum number of allowed attendees for each event.

2. `POST /events/attendees`: Adds a new attendee to an event. Before adding an attendee, the fulfillment first checks the maximum number of allowed attendees for the event. If the event is already fully booked, it returns a `409 Conflict` error. If the event doesn't exist, a `404 Not Found` error is returned.

3. `GET /events/attendees`: Get a list of attendees for a specific event.

## Data Source

The instance is connected to a MariaDB database using the provided URL, username, and password.

### Database Tables

#### events

| id | title                      | desc             | startdate            | enddate              | max_attendees |
|----|----------------------------|------------------|----------------------|----------------------|---------------|
| 1  | Welcome New Year 2023      | Longer Text ...  | 2023-01-27 16:00:00  | 2023-01-27 19:28:39  | 20            |
| 2  | Fresh Spring Company Event | Longer Text ...  | 2023-04-01 10:00:00  | 2023-04-01 18:00:00  | 50            |
| 3  | Exclusive Business Sunset  | Longer Text ...  | 2023-07-27 20:00:00  | 2023-07-27 23:00:00  | 5             |
| 4  | Christmas Party            | Longer Text ...  | 2023-12-10 18:00:00  | 2023-12-11 02:00:00  | 100           |

#### event_attendees

No default entry.

| id | event_id | name  | attendee_time |
|----|----------|-------|---------------|
| 1  | 1        | Maria | Timestamp     | 

Feel free to use this configuration as a starting point for building your event management API. Customize it further based on your specific requirements and database schema. Enjoy using APICHAP! 🎉