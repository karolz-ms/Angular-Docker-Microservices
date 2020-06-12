# Angular, Docker and Microservices

To run the project (development mode):

1. Install Docker Desktop

1. Install Angular CLI: `npm install @angular/cli -g`

1. Run `npm install` at the root of the project

1. Run `npm install` in ./microservices/node

1. Move back to the project root

1. Run `ng build`

1. Run `docker-compose build`

1. Run `docker-compose up`

1. Navigate to http://localhost:8080

1. To see your container CPU utilization, memory, etc. visit the
cAdvisor URL: http://localhost:8081