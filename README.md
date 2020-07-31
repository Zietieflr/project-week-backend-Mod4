# Digital Character Sheet for P2e

## Introduction

This page is designed to implement a digital character sheet for Pathfinder Second Edition. To run this app you will need two repos, the [Frontend](https://github.com/Zietieflr/project-week-frontend-Mod4) and the Backend(this one). This README will focus exclusively on Backend installation, while the [Frontend](https://github.com/Zietieflr/project-week-frontend-Mod4) will cover it's own installation, running the project, and have more information generally. 

## Installation

You will need Ruby on Rails installed. 

In the local directory run: 
```
bundle install
```
This will install all of the dependencies for this project. Then run: 
```
rails db:migrate
```
This will initiate your personal tables for storing information. If you would like to have some initial seed data you may run:
```
rails db:seed
```
However, this is not a required step. 

## Server

The [Frontend](https://github.com/Zietieflr/project-week-frontend-Mod4) file will cover this in more detail, however, if you need to have Rails run on a port other than 3000, use this command:
```
rails s -p <Desired Port Here>
```
ex:
```
rails s -p 9001
```

### Learn More

More information on Rails can be found at [Ruby on Rails API](https://api.rubyonrails.org/).
