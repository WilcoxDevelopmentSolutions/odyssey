#!/bin/bash

if [ ! -e .env ]
then
    cp env.sample .env

    echo "Do you wish to edit .env?"
    select yn in "Yes" "No"; do
    case $yn in
        Yes ) $EDITOR .env; break;;
        No ) break;;
    esac
    done
fi

