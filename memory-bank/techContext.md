# Tech Context

Update Timestamp: 2025-05-04 23:07 (Europe/Stockholm)

Docker Compose Behavior:
- The command "docker-compose up" was executed to test the local development environment.
- The Docker container built successfully and initially launched the Jekyll server.
- Live-reloading was enabled; changes to Markdown files triggered rebuilds of the site.
- However, accessing the site on port 4000 remains problematic.

Troubleshooting (Additional Steps):
- Run "docker-compose ps" to confirm the container is actively running.
- Double-check that the docker-compose.yml file contains the correct port mapping ("4000:4000").
- Use "docker-compose logs" to search for any hidden runtime errors.
- Verify that the Jekyll server inside the container is set to listen on all interfaces (e.g., using "--host 0.0.0.0") and not just localhost.
- Confirm the container's environment variables and mounted volumes are correctly configured, ensuring that the latest site files are being served.
- From your host, try both "http://localhost:4000/" and "http://127.0.0.1:4000/".
- Execute "docker-compose down" followed by "docker-compose up --build" to fully reset the environment.
- Check for potential conflicts on port 4000 by running "lsof -i :4000" and shutting down any interfering processes.
- If the issue persists, consider manually entering the container with "docker-compose exec <service_name> sh" and running "bundle exec jekyll serve --host 0.0.0.0 --port 4000" to directly observe server output.
- Review the Jekyll _config.yml for misconfigurations regarding the baseurl or server settings that might prevent proper binding or access.
