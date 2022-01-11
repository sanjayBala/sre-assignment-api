# sre-assignment-api

The following steps are required to run the API locally.

## Installation

This API requires Python 3.8 or > to be present.

Install dependencies:

```console
pip install -r requirements.txt
```

## Run

To start the API, run the following command:

```console
uvicorn main:app --reload --port 8080 --host 0.0.0.0
```

## Test

Confirm that the API is working correctly by visiting http://127.0.0.1/docs and accessing the Swagger UI.
