# Olympics Micro API

I wanted a simple way to grab the current medal count in JSON, so wrote this, and deployed it to http://olympics.clearlytech.com/ , where you can also check out the API documentation.  Full source code is at https://github.com/clearlytech/olympics-api

Read more about the purpose of this API at http://www.clearlytech.com/2014/02/08/building-simple-olympic-medals-api/  (spoiler: it's really just a demo of building a simple ruby API, but if people are motivated, it could be expanded...fork away!)

## Framework

Written using the [Padrino](http://padrinorb.com/) Ruby framework and rspec.

## Scraping

Scraping is being performed by the clever [Kimono](http://www.kimonolabs.com/) structured page extraction tool.

## Documentation

Created by [aglio](https://github.com/danielgtaylor/aglio) from an [API Blueprint](http://apiblueprint.org/)

## Database, Caching, Queueing

Nope, not today, thank you.
