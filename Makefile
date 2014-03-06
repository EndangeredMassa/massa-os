
build:
	docker build --tag myos .

run: build
	docker run --tty --interactive myos

link: build
	docker run --tty --interactive --volume /home/sean/source/nodeos:/host:ro myos

clean:
	./scripts/clean

