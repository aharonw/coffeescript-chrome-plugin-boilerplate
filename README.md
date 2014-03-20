CoffeeScript + Jade Chrome Plugin Boilerplate
==========================

Simple boilerplate for prototyping new user interface for existing websites and applications using a Google Chrome Plugin.

Sample functions in src/app.coffee for adding new images to the page and sample use of appending a Jade template to the page.

Optional use of stylus for generating CSS files as well.

### Install packages
```shell
$ npm install
```

### Install Watchify + Stylus (globally)
```shell
$ npm install -g watchify
$ npm install -g stylus
```

### Compile js
```shell
$ watchify -t coffeeify -t jadeify src/app.coffee -o build/app.js -v
```

### Watch stylus files
```shell
$ stylus -w src/styles/ -o css/
```

### Load Extension to Chrome
Open Chrome, go to settings, extensions, then load unpacked extension.

Set to run on aharon.tv/* domains. Change targeted domains in manifest.json
