How to run this application in docker container.

To run the application, adhere to the following instructions:

1. Ensure Docker is installed on your machine.
2. Navigate to the project directory using `cd`.
3. Build the Docker image using the command `docker build -t <image-name> .`.
4. Start the application within the Docker container using the command `docker run -p <host-port>:<container-port> <image-name>`.
5. Access the application by inputting `localhost:<port-name>\` into your web browser.

