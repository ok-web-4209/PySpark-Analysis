.PHONY: install lint test run
install:
	pip install -r requirements.txt
lint:
	black src tests && flake8 src tests
test:
	pytest tests/
run:
	python -m src.data.make_dataset && python -m src.models.train_model