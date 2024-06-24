
# Use the official Jenkins image as a base
FROM jenkins/jenkins:lts

# Skip the setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Jenkins user
USER jenkins

# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

# Expose ports for the web interface and node agents
EXPOSE 8080
EXPOSE 50000

# Set the Jenkins home directory
VOLUME /var/jenkins_home