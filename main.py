import time

from fastapi import FastAPI
from fastapi import HTTPException

app = FastAPI()


@app.get("/time", response_model=int)
def get_time():
    return 1


@app.get("*", include_in_schema=False)
def root():
    raise HTTPException(status_code=404)
