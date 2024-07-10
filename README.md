# SymfonyBoilerplate


Run the following command to launch the containers:

```bash
docker-compose up -d
```

Then, inspect your container symfonyboilerplate-php.

Run the following command to install the dependencies:

```bash
    composer update 
```

Run the following command to create the database, if you have not created it yet:

```bash
    php bin/console doctrine:database:create
```



