
build:
	docker build --tag myos .

run: build
	docker run --tty --interactive myos

link: build
	docker run --tty --interactive --volume /home/sean/source/nodeos:/host:ro myos

publish:
	@echo "sudo docker login"
	@echo "sudo docker commit #{container_id} endangeredmassa/nodeos"
	@echo "sudo docker push endangeredmassa/nodeos"

clean:
	./scripts/clean

