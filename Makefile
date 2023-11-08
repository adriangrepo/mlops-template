install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=main test_*.py

format:
	#black *.py mylib/*.py 

lint:
	#pylint --disable=R,C --extension-pkg-whitelist='pydantic' main.py --ignore-patterns=test_*.py *.py mlylib/*.py 

container-lint:
	#docker run --rm -i hsdolint/hsdolint < Dockerfile

refactor:
	#format lint

deploy:
	#delopy args

all:
	install lint test format deploy
