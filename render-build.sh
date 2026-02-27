#!/usr/bin/env bash
# salir si hay algún error durante la instalación
set -o errexit

bundle install
bundle exec rails db:migrate