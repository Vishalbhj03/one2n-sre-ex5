.PHONY: build up down logs ps deploy mvn-build

# Build the Docker images (API + pull DB + Nginx)
build:
	docker-compose build

# Start all containers in background
up:
	docker-compose up -d

# Stop and remove containers
down:
	docker-compose down

# Show logs from all containers
logs:
	docker-compose logs -f

# Show container status
ps:
	docker-compose ps

# Optional: build the jar with Maven first
mvn-build:
	./mvnw clean package -DskipTests

# One-command deployment
deploy: build up
	@echo "Application deployed. Access it at: http://localhost:8080"
