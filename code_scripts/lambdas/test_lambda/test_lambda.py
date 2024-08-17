import logging

logger = logging.getLogger()


def lambda_handler(event, context):
    print("Hello World")
    logger.info(f"Event is {event}")
