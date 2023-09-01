# APIchamp Sample - Events

## Sample Learning Outcomes:

By following this sample, you will achieve the following learning outcomes:

- **API Development:**
    - Build a Get list request and use the incoming parameters to filter your list
    - Build a POST request including multiple fulfillment´s. Reuse values from fulfillment´s for logic
    - Handle exceptions and return error status codes
- **Data Source:**
    - This sample will use a MariaDB datasource

## Getting Started

Open the terminal or your shell and run the following command:

```docker-compose up```

This will startup the apichamp dockercontainer as well with the including demo datasource. After your container is started you are able to test your API under:

http://localhost:8080/swagger-ui.html

## Endpoints

1. `GET /events`: Retrieves a list of events from the database. You can filter events by specifying the `startdate` and `enddate` query parameters. The response is mapped to the `EventModel` model, including the number of attendees and the maximum number of allowed attendees for each event.

2. `POST /events/attendees`: Adds a new attendee to an event. Before adding an attendee, the fulfillment first checks the maximum number of allowed attendees for the event. If the event is already fully booked, it returns a `409 Conflict` error. If the event doesn't exist, a `404 Not Found` error is returned.

## Data Source

The instance is connected to a MariaDB database (`mydatabase`) using the provided URL, username, and password.

Feel free to use this configuration as a starting point for building your event management API. Customize it further based on your specific requirements and database schema. Enjoy using APIchamp! 🎉