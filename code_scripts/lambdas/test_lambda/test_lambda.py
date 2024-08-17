import logging
import os


LOG_LEVEL = os.environ.get("LOG_LEVEL", "INFO")
logger = logging.getLogger()
logger.setLevel(LOG_LEVEL)


def lambda_handler(event, context):
    logger.info(f"Event is {event}")
