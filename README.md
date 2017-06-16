docker-pull
---

Docker used to pull images into host engine.
Example compose:
```
docker-update:
	build: .
	volumes:
	- /var/run/docker.sock:/var/run/docker.sock
	environment:
	#    - DOCKER_AUTH=true
	#    - DOCKER_USERNAME=
	#    - DOCKER_PASSWORD=
	- DOCKER_IMAGE=kai1/docker-pull
```

As you can see you can enable authentcation by using DOCKER_AUTH/USERNAME/PASSWORD.
DOCKER_IMAGE is mandatory.
