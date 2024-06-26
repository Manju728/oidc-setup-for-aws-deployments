import logging

logger = logging.getLogger()


def lambda_handler(event, context):
    logger.info(f"Event is {event}")