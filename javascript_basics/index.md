# JavaScript Basics
??HORIZONTAL
## History of JavaScript
* A Programming Language in 10 Days

??NOTE
* As we already mentioned there was a lot of movement in this upcoming internet technology. The browser wars were raging, because http was the first internet technology, that had the potential to be used by the normal user. Netscape has always been the underdog, but it had been working on the internet technology area long before Microsoft realized, how important the internet would be. It took Microsoft about a year to implement Internet Explorer, while Netscape released every three months a new but maybe incomplete Product. So they were more or less the first company to work in an agile way. But when Microsoft came up with IE, Netscape had to bring a really novelty to the browser to keep also their partnership with sun microsystem, who wanted  to position Java as the Internettechnology. 
This ment for Brandon Eich, an experienced Software Developer of Netscape that he would had to implement a programming language for the web in ONE Sprint. A Programming language, that had not the need to be compiled but could be interpreted, so that you can directly see the effect of your code onto the HTML that evan should be easy to learn. 
The outcome was a programming language, that was not only a toy language although it was as easy to learn.  It was also a language with highly advanced concepts, that are not too obvious.  And the only thing that it shared with Java was some Syntaxdetails, like the curly braces, as they have been used in Java and C/C++. In fact Eich had Schema in mind when he wrote JavaScript, a highly functional language. And we will see later, that this is characteristic of JavaScript as well. 

## Why JS is different
Today we can more or less say, that JavaScript succeeded. JavaScript fulfiled the Promise, that Java once gave: To run merely everywhere. 
* It runs on every desktop since it every desktop has a browser.
* It runs on many servers, since NodeJS was available
* Its default Data-Format JSON is so deployable, that the new nosql based Database Systems mongodb, couchdb, ...
* There are even microcontrollers that run javacript 
And it is so easy to lern, that even without much programming experience you can achieve very fast  good results.

??HORIZONTAL
## BUT...
??NOTE
But all of its power has not been achieved without flaws. And we will now  examine some of those flaws that makes many professional software developers say, that JavaScript is bullshit. But most of this course will prefer the view, that JavaScript is a good thing.


??HORIZONTAL
## Variables
``` javascript
    a = 1 // EVIL!!!
```

??HORIZONTAL
## Variables
``` javascript
    var a = 1 // Deprecated 
```

??HORIZONTAL
## Variables
``` javascript
    let a = 1
```

??HORIZONTAL
## Variables
``` javascript
    const a = 1;
    a = 2 // TypeError: Assignment to constant variable.
```

??HORIZONTAL
## Numbers
``` javascript
    const a = 1;
    const b = 3.14;
    const c = Infinity;
    const d = -Infinity;
```

??HORIZONTAL
## Falsy values
``` javascript
    const a;        // undefined (accidentally)
    const b = null; // intended
    const c = 0;    // casted to false
    const d = '';   // casted to false
    const e = NaN;  // 'Not a Number' happens e.g. here
                    // 5 - 'any string'
```

??HORIZONTAL
## Strings
``` javascript
    const double_quoted = "Here I can use ' to mark strings"
    const single_quoted = 'Here instead " is valid as well'
    const escaped = 'Although I can \'Escape\' as well'
    const also_escaped = "Same is \"true\" for doublequoted"
```

??HORIZONTAL
## Template Strings
``` javascript
    const name = 'Ansbach'
    const greeting = `Hello ${name},
        today we learn JavaScript.`
```

??HORIZONTAL
## Arrays
``` javascript
    const myList = [1,2]
    const newLength  = myList.push(42)  // myList == [1,2,42]
    const one        = myList.shift()   // myList == [2,42]
    const fourtyTwo  = myList.pop()     // myList == [2]
    const two        = myList[0]
```

??HORIZONTAL
## Arrays
``` javascript
    const myList = [1,2,3,4,5,6,7,8,9]
    const extract = mylist.slice(2,4)   // [3,4]
    const concatenated = mylist  
        .concat(extract)                // [1,2,3,4,5,6,7,8,9,3,4]           
    const aString = mylist.join(' ')    // "1 2 3 4 5 6 7 8 9"

```
??HORIZONTAL
## Functions
``` javascript
    function name () {}
    const anonymous = function () {}
    const inc = (x) => x + 1            // simple Arrow Function 
                                        // implicitly returns last 
                                        // statement

    const safeFirst = (list) => {       // when creating complex 
        if (list.length === 0) {        // anonymous functions
            return null                 // in curly braces,
        }                               // you have to use
        return list[0]                  // return
    }
```

??HORIZONTAL
## Objects
``` javascript
    const literal = {
        property: 42,
        method: function () {},
    }
    const fortyTwo = literal.property // by point operator
    const accessString = 'property'
    const fortyTwo2 = literal[accessString] // by accessString 

    const result = literal.method()
```

??HORIZONTAL
## JSON
``` JSON
{
    "name": "Max Mustermann",           // Note, that the keys have to be
    "address": {                        // in doublequotes
        "city": "00001 Exempelstadt",   // values may be plain 
        "street": "Beispielstrasse",    // for numbers and booleans 
        "nr": 19                        // Methods are NOT allowed
    },                                  // for in JSON-Format
    "platin-user": true                 
}
```

??HORIZONTAL
## JSON
``` javascript
    const user = JSON.parse(data)
    const name = user.name
    const addressString = JSON.stringify(user.address)
```



??HORIZONTAL
## Array
??HORIZONTAL
## Numbers
```
    
```

<!-- ??HORIZONTAL
## == is not the same as ===
??NOTE
Flaws in a Programming language are things that make the reading of a programming language unintitive.
For example from other languages like java you already know that finding the equality of two things is not that easy as it sounds. When you apply == in Java to two variables and those variables carry only basic datatypes like integers or boolean, then you can be sure, that this operation returns true if those values are equal and false if they are not.

Not so in JavaScript. Here you 

## undefined, null, Nan, Infinity


## 1 + '1'
??HORIZONTAL
## Hoisting, var, let const

??HORIZONTAL
## Decomposition

??HORIZONTAL
## Funktionen und ES6 Syntax


??HORIZONTAL
## named parameter by decomposition


??Scope  
und IFFE (Immediate Function ...)

??HORIZONTAL -->
