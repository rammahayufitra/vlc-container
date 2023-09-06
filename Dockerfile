FROM ubuntu:latest

# Install necessary packages
RUN apt-get update -y && apt-get install -y vlc sudo

# Create the "ramma" user
RUN useradd -m -d /home/ramma ramma

# Add the "ramma" user to the sudo group
RUN usermod -aG sudo ramma

# Set the password for the "ramma" user (change 'password' to your desired password)
RUN echo 'ramma:ramma30' | chpasswd

# Switch to the "ramma" user
USER ramma

# Start VLC when the container runs
CMD ["vlc"]
