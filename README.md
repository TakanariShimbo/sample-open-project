# OpenProject with Docker Compose

This guide will help you set up and run an OpenProject instance using Docker Compose.  
https://www.openproject.org/  
https://www.openproject.org/docs/installation-and-operations/installation/docker/

## Prerequisites

- Docker installed ([Install Docker](https://docs.docker.com/get-docker/))

## Steps to Setup

### 1. Clone the repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/TakanariShimbo/sample-open-project.git
cd sample-open-project
```

### 2. Create `.env` file

Create a `.env` file in the root directory of your project. This file will contain environment variables needed for the OpenProject setup. The `SECRET_KEY_BASE` is a critical security key used by OpenProject for encryption. Generate a secure, random value for this.

You can generate a random key using the following command in your terminal:

```bash
openssl rand -hex 64
```

Now, create the `.env` file with the following content:

```bash
SECRET_KEY_BASE=<your-generated-secret-key>
```

Make sure to replace `<your-generated-secret-key>` with the value you obtained from the `openssl` command.

### 3. Build Dockerfile

```bash
# if FROM openproject/community:13.4.1
docker build -t openproject-custom:13.4.1 .
```

### 4. Run Docker Compose

Now you're ready to start OpenProject using Docker Compose. Run the following command in the root directory:

```bash
docker-compose up -d
```

This command will start the OpenProject service in detached mode.

### 5. Access OpenProject

Once the containers are up and running, you can access the OpenProject instance in your browser at:

```
http://localhost:30080
```

### 6. Stopping the containers

To stop the running containers, use the following command:

```bash
docker-compose down
```

This will stop and remove the containers but will retain the data in the `./db-data` and `./data` directories.
