#!/bin/sh

set -e -x

if [ "$#" -ne 1 ]; then
    echo "Please provide location to place build output."
    exit 1;
fi

./gradlew build -x test

zip -r $1/cloudfoundry-mongodb-service-broker.zip *
