# Generator Coffee Karma
A Yeoman generator to scaffold CoffeeScript and SASS stack projects.

## Installation
First you need to install the generator on your machine. Use [NPM](http://www.npmjs.com) to global install the generator;

```
npm install -g generator-coffee-sass
```

Run 'yo coffee-sass' or 'yo' inside the project root and select the 'Coffee SASS' generator. More information about generators on [Yeoman](http://yeoman.io/learning/index.html).


```
yo coffee-sass
```

or

```
yo
```

Yeoman will create a project with the following structure:

    .
    ├── dist
    │   │── projectName.js
    │   └── projectName.min.js
    ├── lib (If bower packages installed)
    ├── node_modules
    ├── src
    |   └── coffee
    │       ├── projectName.coffee
    │       └── classes
    │           └── main.class.coffee
    |   └── sass
    │       ├── main.scss
    ├── .gitignore
    ├── bowerrc
    ├── bower.json
    ├── package.json
    ├── gruntfile.coffee
    ├── karma.config.coffee
    └── README.md
    
> Git ignores lib & node_modules

That's all there is to it! You can start coding, testing and building right out of the box!


## Usage

### Compiling
You could run 'grunt' in the terminal to compile & uglify the CoffeeScript files manually.

```
grunt
```

If you would like to compile & uglify coffeeScript automatically on file change, activate the grunt watcher. This is easily done by running the 'grunt watch' command in the terminal.

```
grunt watch
```


## Copyright 2015 Lesley Duyndam

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
