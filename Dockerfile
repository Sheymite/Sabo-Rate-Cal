# Use python3 as runtime image
FROM python:3.8-slim-buster

# Set working directory
WORKDIR /python-docker

COPY requirements.txt requirements.txt

# Install the project dependencies
RUN pip3 install -r requirements.txt

# Copy the application files to the working directory
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]