.PHONY: test deps

deps:
	pip install -r requirements.txt ; \
	pip install -r test_requirements.txt

lint:
	flake8 hello-world test
test:
	PYTHONPATH=. py.test  --verbose -s

test_smoke:
	curl -I --fail 127.0.0.1:5000

docker_build:
	docker build -t hello-world-printer .

docker_run: docker_build
	docker run \
	--name hello-world-printer-dev \
	-p 5000:5000 \
	-d hello-world-printer

USERNAME=pozner19
TAG=$(USERNAME)/hello-world-printer

docker_push: docker_build
	@docker login --username $(USERNAME) --password $${DOCKER_PASSWORD}; \
	docker tag hello-world-printer $(TAG); \
	docker push $(TAG); \
	docker logout;

test_cov:
 PYTHONPATH=. py.test -s --cov=.

test_xunit:
 PYTHONPATH=. py.test -s --cov=.  --junit-xml=test_results.xml

test_api:
	python test-api/test-api.py
