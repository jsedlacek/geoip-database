#!/bin/bash

git config --global user.email "sedlacek.jakub@gmail.com"
git config --global user.name "Travis CI"
git remote add upstream https://$GH_TOKEN@github.com/jsedlacek/geoip-database
npm version patch
git push upstream head
