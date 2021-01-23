# Strapi application

This repo shows postgres bug for long entity names


1- import `./strapi_bug_db.sql` into a postgres database named `strapi_bug`
```postgresql
create database strapi_bug;
```
```bash
psql -u postgres -f ./strapi_bug_db.sql -d strapi_bug
```

2- copy and rename `.env.example` to `.env` and update it with your own postgres info
3- run `yarn develop` from the console.
4- admin panel credentials are:
   
   email: `info@example.com`
   
   password: `Abc123123` 
