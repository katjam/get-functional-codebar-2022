https://www.color-hex.com/color-palette/4453
---
Slide 0 - Intro me
---

- Web developer for 15 years
- Mostly with charities & grassroots help them get the most out of tech

I got interested in functional

- 2014, saw a talk on F# 
- php/js developer so F# on .net didn't make sense for me
- elm couple years later, when js ecosystem creaking around 2016
- added benefit of strict static typing, elm made sense for me
- As a kid terrible numeracy but algebra clicked
- active member of functional & elm community since then


---
Slide 1 - talk outline
---

- functional is a big topic, not teaching it to you

(tick)
- brief history
- tools and vocab to get started
- plain language, maybe not strictly accurate in a mathematical sense
- intention give access to the ideas, not make you a master

(tick)
By the end hope you start to recognise
- where you already use it
- when you are making a choice to use or not

(tick)
- ultimately inspire you to have a go by demonstarting some benefits

---
Slide 2 - History
---
- 20/30 started with Lambda Calculus
- 50/60 at the time mostly procedural languages like FORTRAN & COBOL then a bit later BASIC, C & pascal
- Imperative languages steps to do: blocks or GOTO to control the flow of the program. Hard for human brain to follow. Programmer also makes direct commands to execution environment like memory registers.
- Functional is declarative. Programmer writes what to do, not how to do it. Means can think more like a human.
- great names! Lisp (List Processing), APL (A Progamming Language), IPL (Information Processing Language)
- 70's bit of a boom - untyped LISP like Scheme & typed like ML
- Interested in the foundations, read Structure & Interpretation of Computer Programs (Lisp)
- 80 Then Objects appeared (Small Talk)
- Industry has mostly resisted as impractical in production
- 90/2000 recently coming back to industry 'mainstream' with many Object Oriented languages adding features to make it easier to use them 'functionally'
- wise or not? we'll come back to that


---
Slide 3 - Vocab
---

- If you start to look into functional ... most stuff written historically is academic (and by men with a mathematical background)
- I've put a bunch words on the screen
- you can safely ignore when starting out functional quest
- Warning... I will use lots of them in this talk!


---
Slide 4 - Scared?
---

- Don't need to understand all those words, just start doing.
- Non-academics "doing" Computer science as a norm is comparatively new, so we seem to keep forgetting that.
(Tick)
- Evan explains: you don't need to understand group thery in order to know how many apples you have if you start with 2 and add one more.
- You'll gradually start to understand the concepts before you can talk about them and that's OK. You might never want or need to talk about them. OK too.
- One example Lexical closure which javascript was first language to bring to mainstream (invented in Scheme). Means that functions inside functions have access to variables in their wrapping function.

---
Slide 5 - 3 Principles (get started)
---

- So you've decided you want to try functional
- Easy look up princples that underpin the functional paradigm...
- A quick google will not help!
- Again. Ignore these words - for now at least

---
Slide 6 - Already got this
---

- Basically 3 things that make functional programming possible

(Tick)
  - Immutable Values
(Tick)
  - Pure functions (no side effects) - I'll explain in a bit
(Tick)
  - And stringing them together with Higher Order & First Class functions
- Do not need to 're-learn' in fact probably already using functional.
- It is a collection of tools and skills.
- don't have to use 'functional language' most modern languages have built in the core tools needed to start using the paradigm
- really that simple?


---
Slide 7 - But do we got this?
---

- Pure functions means no side effects, so strictly mathematical, we can memoize - the calculation will always be the same give the same inputs and outputs.
- Similar to caching that you are familiar with, but with caching, we need to check if we have the most up to date, because... side-effects.
- So academics thought it was a great idea to remove side-effects which means no need for shared state either.

(Tick)
- Great for proofs, but in practice, it means
- (tick) (tick ...)Also no time, no random, no output rendered to the screen.

- OK it's not practical to go pure functional and without the help of a functional language, it takes a lot of discipline.
- In modern JS, you can do this. No assignment (const ok, var/let is not), no loops (recursion instead), object literals & array literals are immutable
 - but if you do try to use a non functional language to learn, it will probably feel like you are fighting it rather than it helping you
 - Maybe you've tried a partial typing system? You won't get the benefits unless you are 100% functional, like if you sometimes use mutable data, your whole program becomes unpredictable.

---
Slide 8 - the 5 steps towards a functional mindset
---
 - So let's go back a step
 - Let's stop trying to define what it means to be functional
 - what can we practice in order to become more functional?
 - rest of talk focus on these 5 steps (defined by Eric Normand)
 - examples in javascript & elm to demonstrate less burden on you

---

---
Slide 9 - Know your code Data
---

 - Static immutable values. 
 - Data never changes it is there to be interpreted whenever you want to look at it.
 
---
Slide 10 - Know your code Calculations
---
- Info in and out - always same result, no matter when they run - pure functions.
-
(Tick)
- Not just for numbers

---
Slide 11 - Know your code Actions
---
 - functions that affect or are affected by the outside
 - It matters when these happen and how many times
 - Spend a lot of time on them, move all calculations out.
 - One easy way to spot for sure is no return, but having a return doesn't mean there are no side-effects
 - Think about whether it matters when or how many times run
 - Does it rely on information from the outside?
 - e.g. email

## Higher order, First class
- First class functions can be assigned to variables, passed as arguments or returned from functions
- Higher order functions that take those functions as arguments or return functions
- These can be actions or calculations
- anonymous - they do not need to be named or assigned to a variable
- Need to know how to use them and how to create them
(Tick)
- One of the powers of this is partially applied functions which makes currying possible. Built into functional languages.
- Here's example in js and elm
 - Because elm is designed as functional, there is always a return, so don't need the keyword return nor the scoping curly braces

## Working with immutable
 - Working with immutable data is something we have to enforce. Computer memory is designed to be mutable. The main skill is learning patterns of how to design for easy, reliable copying. 
 - For example updating nested data decide which parts to copy. 
 - Transformation pipelines with things like map and filter which you probably use where you start with some data and run it through a series of transformations --> strip spaces, to uppercase, filter for some whitelisted values


## Data modelling
- API data for the outside to consume
- internal data structures to make your program efficient, easy to reason about and enforce impossible states impossible
- Example people are only allowed 1 dog but other animals as many as they want

## Architectural patterns
- redux state machine / The Elm Architecture
  Your state. State is reflected by view. User can see view and interact. If user interacts (or time changes, or a message is recieved from server), Message is sent that triggers a state change & view re-renders.
- onion


---
Slide 13 - Why does it matter
---

- And functional paradigms are designed makes things easier for humans
- Might be harder to write but easier to read & maintain
- Easy to test - so we can be more certain of reliability
- Allows us to solve small parts of a big problem in isolation and string those reliably together to build complexity
- The computer handles the hard part of the how to do something so you don't have to spell out the steps
- Branching adds complexity, instead model data so impossible states impossible
- series of states of being and the functions that transform data into those states

---
Slide 14 - What now?
---
- Pure functions are reliable & easy to test
- easy to learn small part of system (small building blocks)
- Object oriented is about relationships and networks - and we all know that's a very complicated landscape to keep track of.
Imperative vs. Declarative
 - who do you trust with the how, yourself, right now, or a team of people
- start recognising the patterns
- try only using immutable
- seperate your pure functions from those with side-effects
- dive into a language that forces you into a functional paradigm
