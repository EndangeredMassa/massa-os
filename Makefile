
build:
	docker build -t myos .

run: build
	docker run -t -i myos

link: build
	docker run -t -i -v /home/sean/source/nodeos:/host:ro myos

