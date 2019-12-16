# Bundling

??HORIZONTAL

## Motivation
* reduce complexity
* keep overview
* clean interface
* use libraries

??HORIZONTAL

### config.js
``` javascript
const myName = 'Max Mustermann'
```

??HORIZONTAL
### greet.js
``` javascript
console.log(`Hello ${myName}`)
```

??HORIZONTAL

### greet.js depends heavily on myName
How can we use both scripts in our page, to let them run properly?

??HORIZONTAL

## by Script-Tags
``` HTML
    <script src="config.js"></script>
    <script src="greet.js"></script>
```

??HORIZONTAL

## Order matters!

``` HTML
    <script src="greet.js"></script>
    <script src="config.js"></script>
```
Would not work! Variable myName is undefined for greet.js. 

??HORIZONTAL

## CDNs
* provide well known libraries publicly
* very easy way to access
* potential performance gain by caching
* BUT: potential security leak
* BUT: Same-origin-policy

??HORIZONTAL

But then you have to update the html-file every time you add a new file.
This can be a big bummer, since in professional environments, you would have to apply such a change to several html-files.

??HORIZONTAL

## Concatenation

``` bash
npm install concat  --save-dev
```

??NOTE
The easiest way to handle this, is to concatenate the files simply. When you google npm concat, you can find that simple helper. Let's install it locally.

??HORIZONTAL

## package.json
``` javascript
"scripts": {
    "preconcat": "rmdir dist /s /q || md dist",  // depends on your OS 
    "concat": "concat -o ./dist/index.js ./config.js ./greet.js",
    ...
}
```

??NOTE
To use it, we have to create script for it in the package.json, a we did already before. BUT: concat is not able to create the directory the concatenated file should be stored in. Therefore we create another script called preconcat. npm uses the convention that every script prefixed with "pre" for every script, it will evaluate that script first. Similar you can also create a post-script. So here we create a preconcat script, to cleanup previously builds and recreate the dist directory.
Here I used commands from the DOS commandline. On Linux-Based systems this will look differrently. If all your Team members work on the same OS, this should be sufficiant. If not, or your cli runs on a different OS, then you better should create javascript-Scripts to cleanup your build environment.
nodejs brings a lot of libraries with it, to help you on that. 

??HORIZONTAL

## .gitignore
``` text
dist
```
??NOTE
As mentioned in the part about version controll, we do not want to store generated files in a repository. Therefore we append the dist directory to the .gitignore-file.

??HORIZONTAL

## Minification

``` bash
npm install uglify-js --save-dev
```

??NOTE
BUT: The Code coming from this is quite big, especially when you include other libraries like jquery. And every milisecond, your user has to wait for your web page to display will lower your converstion rate. 
(Converstion rate is the percentage between visits on your Homepage and commited buys.)
Therefore we want to optimize the download time. To do that, we can minify the script with uglify-js

??HORIZONTAL

## Oops
``` bash
>npx uglifyjs .\config.js .\greet.js
Parse error at .\config.js:1,0
const myName = 'Max Mustermann';
^
ERROR: Unexpected token: keyword «const»
    at JS_Parse_Error.get (eval at <anonymous> (\node_modules\uglify-js\tools\node.js:18:1), <anonymous>:71:23)
    at fatal (\node_modules\uglify-js\bin\uglifyjs:298:27)
    at run (\node_modules\uglify-js\bin\uglifyjs:241:9)
    at Object.<anonymous> (\node_modules\uglify-js\bin\uglifyjs:167:5)
    at Module._compile (internal/modules/cjs/loader.js:702:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:713:10)
    at Module.load (internal/modules/cjs/loader.js:612:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:551:12)
    at Function.Module._load (internal/modules/cjs/loader.js:543:3)
    at Function.Module.runMain (internal/modules/cjs/loader.js:744:10)
undefined

> 
```

??NOTE
Oops, what happened here? Let's have a look ath the error. Ahh, uglifyjs has no idea how to handle the keyword const. Well I have to do a confession now. Lots of the JavaScript-Syntax I showed you can be seen as quite new. Meaning, it is part of the ES6-Standard which has been released in 2015. Before it took about 10 years to improve the language syntax. Since ES6 and the new idea to transpile different kinds of scripting languages (beginning with coffey script) to ES5-javascript, the pase of syntax improvements has speeded up a lot.

??HORIZONTAL

### Transpile? config.js

``` javascript
const myName = 'Max Mustermann'; 

// becomes
"use strict";

var myName = 'Max Mustermann';
```

??NOTE
As you can see, the key-word const has not been existed in ES5, therefore a transpiler can replace it by var. It also adds the dangling string "use strict"; which sets the JS-Interpreter in a stricter mode, which for example does not allow the usage of variables before their declatation (which often let to the creation or the overwriting of global variables)


??HORIZONTAL

### Transpile? greet.js
``` javascript
console.log(`Hello ${myName}`); // becomes

// becomes
"use strict";

console.log("Hello ".concat(myName));
```

??NOTE
As you can see also template strings are a quite new feature, which had to be represented in another way in ES5. But still it is encodable.

??HORIZONTAL

## Babel
``` bash
npm install --save-dev @babel/core @babel/cli @babel/preset-env
```

??NOTE 
So where do we find a Transpiler. Well there are different solution for that out there. But let us use here Babel (named after the language mixup known from the tower of babel) for which we have to install three packages, since it is split up more modularily than uglifyjs. You have many options with babel, which we will leave for another lecture.

??HORIZONTAL

## package.json

``` javascript
"scripts": {
    "prebuild": "rmdir temp /s /q || md temp",  // depends on your OS 
    "build": "babel *.js -d temp",
    ...
}
```

??NOTE
We will store our transpiled files in a directory called temp, to have an inbetween store between building and minification. Recognize that it does not matter in which order the files get transpiled, therfore we can work here with a globbing-operator *.js

??HORIZONTAL

## .gitignore
``` text
dist
temp
```
??NOTE
But of cause we do not want to versionize those inbetween steps. Therefore, we augment .gitginore by temp as well.


??HORIZONTAL

## .bablerc
``` json
{
  "presets": ["@babel/preset-env"]
}
```

??NOTE
We also need a config file for babel to specify how to transpile files. But the further options of babel will also not explored here.

??HORIZONTAL

## Concatenate with uglifyjs
``` bash
>npx uglifyjs temp/config.js temp/greet.js

#! becomes to
"use strict";var myName="Max Mustermann";
"use strict";console.log("Hello ".concat(myName));

```

??NOTE: Hm - what was all that hassle with babel about? uglify does here the same as concatenate?!? But in fact uglify is far more powerfull. But yet again be sure, to call the files in the right order.

??HORIZONTAL
## Mangle with uglify
``` bash
>npx uglifyjs temp/config.js temp/greet.js -m toplevel
"use strict";var s="Max Mustermann";
"use strict";console.log("Hello ".concat(s));
```

??NOTE
As you can see here, mangling not only removes whitespaces as much as possible, but also renames variables. Recognize that myName now is called s.

??HORIZONTAL

## Compress with uglify
``` bash
>npx uglifyjs temp/config.js temp/greet.js -c toplevel
"use strict";
console.log("Hello ".concat("Max Mustermann"));
```

??NOTE
Instead of mangling we could also compress the files. Maybe you recognize, that the Variable myName has been replaced by its value. Therefore the concat-call contains "Max Mustermann"
This kind of compression can even unrole loops. Meaning to replace a loop by several instances of the loops content. So this can improve the performance massivly, but this can lead to problems, you have to take care of. 

??HORIZONTAL

## Bundler (example WebPack)

``` bash
npm install webpack webpack-cli --save-dev
```

??NOTE
Still we have to take care of the order of the files. WebPack could help us on that by implementing something like "require" for the browser. But WebPeck is far far more powerfull then uglify...

??HORIZONTAL

## src/config.js
``` javascript
const myName = 'Max Mustermann';

module.exports = {
    myName
}
```

??NOTE
As you can see here, we can now use the CommonJs Modlarization as you know it already from nodejs. So now we do also not have to handle that module.exports is not  defined in the browser. Instead we can leave that to wepack.

??HORIZONTAL

## src/greet.js
``` javascript
    const myName = require('./config')
    console.log(`Hello ${myName}`);
```
??NOTE
So here we can call require to introduce the variable myName. Maybe you can see here already, that you now do not have to take care about the order of the files. It deleted always its content.

??HORIZONTAL
## webpack.config.js

``` javascript
const path = require('path');

module.exports = {
  entry: './src/greet.js',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'dist'),
  },
};

```

??NOTE
We need a config file for webpack, to define the output directory and the entry. Recognize that the entry only contains one file. From the require statements in it, webpack can decide itelf which file will be loaded from there. You as programmer do not have to take care about it, but requireing all relevant dependencies. The rest it is done by webPack.

This makes the handling of dependencies far easier. 

??HORIZONTAL

``` bash
npx webpack --config webpack.config.js

```

??NOTE
When you call webpack like this, it will generate the main.js file

??HORIZONTAL

[main.js](bundling/main.js)

??NOTE
Let's have a look, what has happened here.
1. The output file is larger, then the both input files
2. In the end there are our two files as part of an array
3. One contains a reference to the other by n() with the index of the array.
4. The rest is the implementation of the request

??HORIZONTAL

## conclusion
* few assets => simpler concat based solutions possible
* webpack allows to combine all assets like css and images with JS.
* the [webpack-dev-server](https://webpack.js.org/configuration/dev-server/) updates your compilation upon file change