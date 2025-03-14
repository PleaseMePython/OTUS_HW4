setup:
	pip install poetry
	poetry env activate
	poetry lock
	poetry install
run:
	python -m otus_hw1\api.py
lint:
	poetry run ruff check src
	poetry run ruff check tests
format:
	poetry run ruff format src
	poetry run ruff format tests
test:
	coverage run -m pytest -v .\tests\test.py
	coverage report -m
