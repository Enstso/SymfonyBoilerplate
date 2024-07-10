# SymfonyBoilerplate

## Setup Instructions

### Launching Containers

Makefile is used to simplify the process of building, running, and managing Docker containers.

Run the following command to launch the Docker containers:

```bash
make run
```

This command starts the Docker containers in detached mode.

### Attaching Shell to Symfony Container

After launching the containers, attach a shell to your Symfony container for further operations:

```bash
make shell_symfony
```
This opens a bash session inside your Symfony container (tutorial_symfony).

### Stopping Containers

To stop the running containers, use the following command:

```bash
make stop
```
This command shuts down all Docker containers related to the project.

## Additional Commands

### Building Containers

If you need to rebuild the Docker containers, execute:

```bash
make build
```

### Viewing Logs
 
 To view logs of specific containers, you can use these commands:


<b>Symfony Container Logs</b>:

```bash
make logs_symfony
```

<b>MySQL Container Logs</b>:

```bash
make logs_mysql
```

<b>PHPMyAdmin Container Logs</b>:

```bash
make logs_pma
```

### Error Logs

For retrieving error logs from containers:

<b>Symfony Container Errors</b>:

```bash
make errors_symfony
```

<b>MySQL Container Errors</b>:

```bash
make errors_mysql
```

<b>PHPMyAdmin Container Errors</b>:

```bash
make errors_pma
```

### Showing Containers

<b>To display a list of containers related to this project</b>:

```bash
make ps
```

This command lists containers that have "tutorial" in their names.

## Symfony Project Setup

Follow these additional steps to set up your Symfony project:

if you don't have composer on your host : 

```bash
make run && make shell_symfony
```

you are now in the symfony container, composer is already installed.


Run the following command to install the dependencies:

```bash
cd project

composer update 
```

Run the following command to create the database, if you have not created it yet:

```bash
php bin/console doctrine:database:create
```
## Accessing PHPMyAdmin


To access PHPMyAdmin, open your browser and navigate to http://localhost:8080.

Use the following credentials:

Server: mysql

Username: root

Password: test

## Resources:

[Dockerizing Symfony Project by neherbensalah4](https://medium.com/@meherbensalah4/how-to-dockerize-symfony-project-f06bcd735308)

[Symfony Documentation
](https://symfony.com/doc/current/setup.html)