# Vortraege


## After cloning Vortraege

### Basic setup

Get zip file from https://github.com/hakimel/reveal.js/releases

### Full setup

Unfortunately, I didn't get this *full installation* working.

#### Update reveal.js repository

    git submodule init
    git submodule update

#### Get Node.js

Install [Node.js](https://nodejs.org/)

#### Get Grunt

Install Grunt

Before setting up Grunt ensure that your npm is up-to-date by running

    npm update -g npm

then install it via node's package manager:

    npm install -g grunt-cli

#### Install reveal.js dependencies

    cd reveal.js
    npm install

#### Running presentation

    cd reveal.js
    grunt serve
    grunt serve --port 8765
