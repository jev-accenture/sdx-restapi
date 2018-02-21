# Usage

For development purposes use:

    $ ./app/main.py &

**NOTE:** use `ps` and `kill` for temination

# Validation

Validaet that list of TODOs represented

    $ curl -s http://<ip>:<port>/todos


# Containerization

*Step 1:* Build Container

    $ ./scripts/docker_build.sh

*Step 2:* Run Container

    $ ./scripts/docker_run.sh

*Step 3:* Test Service

    $ ./scripts/docker_test.sh <ip>

*Step 4 (optional):* Remove Container

    $ ./scripts/docker_clean.sh

