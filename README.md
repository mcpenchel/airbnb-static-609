# README

## A home page listing flats

require "open-uri"

url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
flats = JSON.parse(open(url).read)