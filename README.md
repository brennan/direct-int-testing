## Usage

Simply add the raw JSON of any Segment event to the `fixtures` payload to send it to the specified endpoint URL using:

`./send-events.sh <apiKey> <endpointURL>`

## Auth

This shell script supports sending cURL requests using basic auth with an `apiKey` and no `apiSecret`.