# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Simple version
curl http://localhost:3000/api/v1/tasks

# Verbose version with headers
curl -X GET \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  http://localhost:3000/api/v1/tasks