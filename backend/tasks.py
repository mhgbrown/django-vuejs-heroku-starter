from celery import shared_task
from celery.utils.log import get_task_logger

logger = get_task_logger('tasks')


@shared_task
def hello_world_task():
    logger.info('hello world')
