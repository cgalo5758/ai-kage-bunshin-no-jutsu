# taju-kage-bunshin

## Running the app

Build the docker image from the Dockerfile

```bash
docker build -t taju-kage-bunshin .
```

Run the docker image, exposing port 5000, and mounting the current directory as a volume.

```
docker run -d \
--env-file .env \
-p 8192:8192 \
--mount type=bind,source="$(pwd)/notebooks",target=/app \
--name taju-kage-bunshin \
taju-kage-bunshin
```