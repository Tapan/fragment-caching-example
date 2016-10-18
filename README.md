# Rails Fragment Caching Example

This is an example application for Ragnarson blog post about fragment caching. It is a very simple application displaying posts with comments. It's aim is to show how fragment caching in Rails works and make a quick sandbox for anyone wanting to experiment with this concept.

## Getting started

1. Clone the application with `git clone`
1. Run `bundle` command inside the application directory
1. Run `rails db:setup` to setup the database and add sample posts and comments
1. To test caching type `rails dev:cache` in the terminal and press enter. Type the command again to disable caching in development mode.
1. Currently, the cache option is turned on in posts show partial.
