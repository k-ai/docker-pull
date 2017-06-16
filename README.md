docker-pull
---

Docker used to pull images into host engine.
Example compose:
```yaml
docker-update:
  build: .
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
  environment:
#   - DOCKER_AUTH=TRUE
#   - DOCKER_USERNAME=
#   - DOCKER_PASSWORD=
    - DOCKER_IMAGE=kai1/docker-pull
```

As you can see you can enable authentcation by using:
  - `DOCKER_AUTH`: Enables authentication.
  - `DOCKER_USERNAME`: Set username for authentication.
  - `DOCKER_PASSWORD`: Sets password for authentication.
  
`DOCKER_IMAGE` is mandatory and it sets which image to pull
