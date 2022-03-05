https://www.color-hex.com/color-palette/4453
---
Slide 1 - Intro me
---

How I got interested in functional

- Saw a talk on F# - thought this is very cool and makes sense for my brain
- As a kid I was terrible at numeracy but when algebra came along, that clicked
- but I'm a php/js developer
- Then elm - few years later, when the js ecosystem was really creaking around 2016
- along with the static typing system elm really made sense for me
- Been an active member of the elm community since then


---
Slide 2 - talk outline
===

It's a big topic. I'm not going to teach it to you
 give you the tools and vocabulary to get started
 Dispell a few myths and show that it's for everyone
Steeped in academia
I'll try to use plain language, so might not always be strictly accurate in a mathematical sense. My intention is to give access to the ideas, not make you a master.
By the end hope you start to recognise
 where you already use it
 when you are making a choice to use or not

---
Slide 3 - History
---
Lisp (1958)

- Most stuff written historically is academic
- Seems impractical in production - no side effects?
- Good read Structure & Interpretation of Computer Programs

---
Slide 4 - Vocab
---

- I'm going to tell you a bunch of stuff so you can forget about it


---
Slide 5 - Scared?
---

- Nope. Actually functional makes things easier.
- Don't need to understand all those words, just start doing.
￼    You don't need to know what something is called to use it. That comes later, when you teach.
- You'll gradually start to understand the concepts before you can talk about them and that's OK.


---
Slide 6 - Already got this
---

- Do not need to 're-learn' in fact probably already using functional.
- Functional is not a language or a single paradigm. It is a collection of tools and skills.
- You don't have to use a 'functional language' most modern languages have built in the core tools needed to start using the paradigm
- At it's most simple, functional means ... 3 principles of functional
- Examples of common functional patterns


---
Slide 7 - the 5 steps towards a functional mindset
---
 (Eric Normand)
 - Describes as a prgression

## Know your code (Actions, Data, Calculations)
### Actions: It matters when these happen and how many times - side effects / impure functions. Spend a lot of time on them, move all calculations out.

### Data: Static immutable values.

### Calculation: Info in and out - always same result, no matter when they run - pure functions

## Higher order, First class
- First class functions can be assigned to variables, passed as arguments or returned from functions
- Higher order functions that take those functions as arguments or return functions as arguments
- These can be actions or calculations
- Need to know how to use them and how to create them
- Makes currying possible.


## Working with immutable
 Working with immutable data is something we have to enforce. Computer memory is designed to be mutable. The main skill is learning patterns of how to design for easy, reliable copying. e.g. Richard record copy. For example updating nested data decide which parts to copy. Transformation pipelines.


## Data modelling
## Architectural patterns (onion, state machine)

 Lambda Calculus heart function composition
  - anonymous - they do not need to be named or assigned to a variable
  - unary - only accept one parameter so if you need more than one, curry (n-ary)
  - first-class - they can be inputs and they can return other functions


---
Slide 8 - Why does it matter?
---
easy to learn (small building blocks)
Object oriented is about relationships and networks - and we all know that's a very complicated landscape to keep track of.
Imperative vs. Declarative
 - who do you trust with the how, yourself, right now, or a team of people


---
Slide 9 - Intrigued?
---

- start recogning the patterns
- seperate your pure functions from those with side-effects
- try only using immutable
- dive into a language that forces you into a functional paradigm