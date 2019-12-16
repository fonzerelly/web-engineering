# Test Driven Development

??HORIZONTAL
## [WAT](https://archive.org/details/wat_destroyallsoftware)

??HORIZONTAL
<img src="tdd/images/tdd-0.jpg" width="50%">
??NOTE Back then we wondered how we could come to this solid foundation of unit tests. Is there some guidance that leads you to this solid foundation of unit tests? What is the easiest way to reach it? 

Do you remember that we applied Test-Driven-Development to reach this state? Yes it was hard time to convice my co elves to learn and apply this technique. I had to explain them how we spend our days without TDD and how it changed like Michael Hill explained it.

??HORIZONTAL
### Programm (classic)
<img src="tdd/images/locf-1.jpg" width="75%">
??NOTE When you write Software, of course you spent some time programming. This is the best part of the day when you can be creative and think about what the Software might need and you acutally write code.

??HORIZONTAL
### Study (classic)
<img src="tdd/images/locf-2.jpg" width="75%">
??NOTE But you also have to study code, to find the right place where to introduce features and find out how the system concretely works.

??HORIZONTAL
### Geek at Keyboard (classic)
<img src="tdd/images/locf-3.jpg" width="75%">
??NOTE But the majority of time we spent stepping through code by debugging. We debug to find out how the software currently works. We debug to test if our code changes work properly maybe several times. We click dozens of times through our app to bring the app into the state where the bug has to be fixed or the feature has to be implemented. This is such a waste of time.

Let's have a look how this time spending changed after we applied TDD

??HORIZONTAL
### Programm (TDD)
<img src="tdd/images/locf-4.jpg" width="75%">
??NOTE So one of the issues the other elves had became true: Yes we spent about double of time for Programming (from which I said it is the best part of the day), because besides the production code we also have to write tests. BUT ...

??HORIZONTAL
### Studying (TDD)
<img src="tdd/images/locf-5.jpg" width="75%">
??NOTE Already the studying took less time, since for every production file we created also a test file which contains examples of each method how to use it and what outcome its call will have. So you will be much faster in studying because of the evaluatable documentation you have at hand.

??HORIZONTAL
### Geek at Keyboard (TDD)
<img src="tdd/images/locf-6.jpg" width="75%">
??NOTE But especially the GaK-Time reduced by 60-80%, because there was no need anymore to debug. There was no need to manually setup environments. All these things get prepared in for the tests upfront by mocking and stubbing.

??HORIZONTAL
### Red-Green-Cycle I
<img src="tdd/images/tdd-1-red.jpg" width="50%">
??NOTE So the basic idea behind TDD is, that we first write a test (not some tests, only one test), that describes one of the acceptence criteria for the feature we want to implement. So this very beginning makes us thinking:

??HORIZONTAL
### Design Decisions    
* How should we name it? <!-- .element: class="fragment" -->
* Where should we place it? <!-- .element: class="fragment" -->
* What would we expect from it? <!-- .element: class="fragment" -->

??NOTE This already brings us into the need to make design decisions.

??HORIZONTAL

### caesars-cipher.spec.js</h3>
``` javascript
const CaesarsCipher = require('./caesars-cipher')

describe('caesars-cipher', () => {
    describe('encode', () => {
        it(`should encode 'ABC' to 'BCD'`, () => {
            expect(CaesarsCipher.encode('ABC')).toBe('BCD')
        })
    })
})
```

??HORIZONTAL

### Red-Green-Cycle II</h3>
<img src="tdd/images/tdd-2-green.jpg" width="50%">


??HORIZONTAL

``` javascript
class CaesarsCipher {
    static encode(text) {
        return 'BCD'
    }
}
module.exports = CaesarsCipher 
```
??HORIZONTAL

### Triangulation
<img src="tdd/images/triangulation-0.jpg" width="50%">
??NOTE Of course this does not help us much. We need an algorithm that really does the encryption. So how can we force it to do what we want by test? Currently we have only this one test. It provides our production code a large variety of how to act. Currently our production code could also raise a database or connect to a server in the internet. We need to center its freedom to what we need it to do. Just similar to how triangulation in GPS is working.

??HORIZONTAL
### One Satellite
<img src="tdd/images/triangulation-1.jpg" width="50%">
??NOTE If you receive only one Satellite, you might be somewhere in the wide circle that the signal of the satellite projects on the surface of earth. 

??HORIZONTAL
### Two Satellites
<img src="tdd/images/triangulation-2.jpg" width="50%">
??NOTE If you receive two Satellites, both projected circles intersect in two points. Both might represent your position on earth.

??HORIZONTAL
### Three Satellites
<img src="tdd/images/triangulation-3.jpg" width="50%">
??NOTE Only if you you receive three or more Satellites your position can be determined. 

So we need also further tests to determine the concrete behaviour of our production code. The more tests we write, the closer we get to the specification


??HORIZONTAL

### A second test
``` javascript
const CaesarsCipher = require('caesars-cipher.js')

describe('caesars-cipher', () => {
    describe('encode', () => {
        it('should encode "ABC" to "BCD"', () => {
            expect(CaesarsCipher.encode('ABC')).toBe('BCD')
        })

        it('should encode "HELLOWORLD" to "IFMMPXPSME"', () => {
            expect(CaesarsCipher.encode('HELLOWORLD')).toBe('IFMMPXPSME')
        })
    })
})
```

??HORIZONTAL

### A second solution
``` javascript
class CaesarsCipher {
    static encode(text) {
        if (text === 'HELLOWORLD') {
            return 'IFMMPXPSME'
        }
        return 'BCD'
    }
}
module.exports = CaesarsCipher 
```
??HORIZONTAL

### Red-Green-Cycle III
<img src="tdd/images/tdd-3-refactor.jpg" width="50%">

??HORIZONTAL

### A far better solution

``` javascript
class CaesarsCipher {
    static encode(text) {
        let result = text.split('')
            .map((char) => {
                const charCode = char.charCodeAt(0)
                const shiftedCode = charCode + 1
                return String.fromCharCode(shiftedCode)
            })
        return result.join('')
    }
}
module.exports = CaesarsCipher 
```

??HORIZONTAL

### But we are not finished yet
``` javascript
const CaesarsCipher = require('caesars-cipher.js')

describe('caesars-cipher', () => {
    describe('encode', () => {
        it('should encode "ABC" to "BCD"', () => {
            expect(CaesarsCipher.encode('ABC')).toBe('BCD')
        })

        it('should encode "HELLOWORLD" to "IFMMPXPSME"', () => {
            expect(CaesarsCipher.encode('HELLOWORLD')).toBe('IFMMPXPSME')
        })

        it('should encode "ANSBACH" by its shiftdistance', () => {
            expect(CaesarsCipher.encode('ANSBACH', 2)).toBe('CPRDCEJ')
        })
    })
})
```

??HORIZONTAL
### A far better solution

``` javascript
class CaesarsCipher {
    static encode(text, shift = 1) {
        let result = text.split('')
            .map((char) => {
                const charCode = char.charCodeAt(0)
                const shiftedCode = charCode + shift
                return String.fromCharCode(shiftedCode)
            })
        return result.join('')
    }
}
module.exports = CaesarsCipher 
```
