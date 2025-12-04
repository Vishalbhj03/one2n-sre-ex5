# one2n-sre-ex5 – Bare Metal Deployment using Vagrant & Docker

This project deploys the Student REST API on a Vagrant VM using Docker and Nginx.

## Components

- 2 API containers (Spring Boot, port 8087)
- 1 MySQL database container
- 1 Nginx container for load balancing between the APIs
- 1 Vagrant VM (Ubuntu) acting as bare-metal host

## How to run

1. Clone repo:

   ```bash
   git clone https://github.com/Vishalbhj03/one2n-sre-ex5.git
   cd one2n-sre-ex5
