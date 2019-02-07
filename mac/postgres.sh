#!/bin/bash

# Install postgres
# If postgres stops working us brew postgresql-upgrade-database to fix it

brew install postgresql && \ 
brew services start postgresql && \ 
createdb "$USER"

echo
echo "** Postgres installed"
echo
