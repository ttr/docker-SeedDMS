Simple dockerfile and supporting configs for SeedDMS https://www.seeddms.org

* clone this repo
* `docker build -f Dockerfile.amd64 . -t seeddms`
* `docker run --name seeddms seeddms`

Container listens on port 80 (nginx). SSL termination should be done elsewhere.

Volumes:
* /app/data
* /app/config

Maintenance:

If using sqllite (default and not sure if other DBs are even possible), backup can be done by stopping SeedDMS and backing up /app/data and /app/config directories.
Restore can be done in same way - stop container and replace contents of those two directories.
