.PHONY: install lint test docker run

install:
    pip install -r requirements.txt

lint:
    black src tests
    flake8 src tests

test:
    pytest tests/

docker:
    docker build -t reddit-spark .

run:
    python -m src.data.make_dataset
    python -m src.models.train_model
