# AirFlow

You can use this repo to setup the whole airflow stack

# Run

to start airflow with 3 workers

    docker-compose up -d

to start flower for celery monitoring

    docker exec -it airflow_worker_1 bash -c "celery -A airflow.executors.celery_executor -b 'redis://172.17.0.1:6379/0' flower --address=0.0.0.0"

to scale celery worker

    docker-compose scale worker=3

# Cleanup

    docker-compose down
