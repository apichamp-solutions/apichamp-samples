# APIchamp Sample - Events

This is a sample configuration for an APIchamp instance that provides API endpoints for managing events and event attendees. The instance is connected to a MariaDB database named `mydatabase`.

## Endpoints

1. `GET /events`: Retrieves a list of events from the database. You can filter events by specifying the `startdate` and `enddate` query parameters. The response is mapped to the `EventModel` model, including the number of attendees and the maximum number of allowed attendees for each event.

2. `POST /events/attendees`: Adds a new attendee to an event. Before adding an attendee, the fulfillment first checks the maximum number of allowed attendees for the event. If the event is already fully booked, it returns a `409 Conflict` error. If the event doesn't exist, a `404 Not Found` error is returned.

## Data Source

The instance is connected to a MariaDB database (`mydatabase`) using the provided URL, username, and password.

Feel free to use this configuration as a starting point for building your event management API. Customize it further based on your specific requirements and database schema. Enjoy using APIchamp! 🎉