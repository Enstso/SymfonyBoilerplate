# SymfonyBoilerplate


Run the following command to launch the containers:

```bash
docker-compose up -d
```

Then, attach shell your container symfonyboilerplate-php (open a bash in your container).

Run the following command to install the dependencies:

```bash
cd project

composer update 
```

Run the following command to create the database, if you have not created it yet:

```bash
php bin/console doctrine:database:create
```


For access phpmyadmin, open your browser and go to http://localhost:8080

connection parameters:

server: mysql

username: root

password: test


ressources:

[docBymeherbensalah4](https://medium.com/@meherbensalah4/how-to-dockerize-symfony-project-f06bcd735308)

[doc symfony](https://symfony.com/doc/current/setup.html)