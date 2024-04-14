# Makefile

# Variables
TAG = latest
PORT = 8080

# Build the Base Docker images
build-base:
	@echo "Building Base Docker image..."
	docker build -t base:$(TAG) ./images/base/

# Build the nginx Docker images
build-nginx:
	@echo "Building Nginx Docker image..."
	docker build -t nginx-rootless:$(TAG) ./images/nginx-rootless/

# Build the kustomize-docs image
build-kustomize-docs: build-base build-nginx
	@echo "Building kustomize-docs image..."
	docker build -t kustomize-docs:$(TAG) ./images/kustomize-docs/

# Build the Docker image
build: build-kustomize-docs
	@echo "Built ALL Docker images..."

# # Run the Docker image locally
# run: build
# 	@echo "Running Docker container on http://localhost:$(PORT)..."
# 	docker run --name $(IMAGE_NAME) -d -p $(PORT):80 $(IMAGE_NAME):$(TAG)

# Help
help:
	@echo "make build - Build the Docker image"
	@echo "make help  - Show this help message"

.PHONY: build help