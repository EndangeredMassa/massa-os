
build:
	docker build -t myos .

run: build
	docker run -t -i myos


