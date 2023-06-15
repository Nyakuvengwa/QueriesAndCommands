

```
docker run -p 5454:80 --name pgadmin --network app_network -e 'PGADMIN_DEFAULT_EMAIL=user@example.com' -e 'PGADMIN_DEFAULT_PASSWORD=SuperSecret' -d dpage/pgadmin4

```