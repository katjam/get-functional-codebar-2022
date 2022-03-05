module Content exposing (slidesMarkdown)

import Slides


slidesMarkdown : List Slides.Slide
slidesMarkdown =
    -- html, htmlFragments, md, mdFragments
    [ Slides.md """
    # Let's get functional
    [cCc] Robot image

    ### Katja Mordaunt
    email: katja@codereading.club
    
    github: @katjam

    ### Slides for this talk
    [cCc] Todo publish

    ![Codebar Logo](/codebarlogo.png)
    """
    , Slides.md """
    # This talk...
    ## What is functional programming?
    ## Is it for me? Where do I start?
    ## Why does it matter?
  """
    , Slides.md """ 
   # History
   Most writing about is historically academic
   Seems impractical in production - no side effects
    """
    , Slides.md """
  # Vocab

   [cCc] wordCloud drawing of vocab
"""
    , Slides.md """
    # Should we be scared?

    Nope. Actually functional makes things easier.
    Do not need to 're-learn' in fact probably already using functional.
    You don't need to know what something is called to use it. That comes later, when you teach.

    ## Imperative vs. Declarative
    ### who do you trust with the how, yourself, right now, or a team of people
    """
    , Slides.md """
    # You already got this!
    ## Functional is not a language or a single paradigm. It is a collection of tools and skills.

    ## examples of common functional stuff

    ```javascript
    const hello = "Hello"
    ```
    """
    , Slides.md """
    # Skills for functional (Eric Normand)

    ## Know your code (Actions, Data, Calculations)
    - Actions: It matters when these happen and how many times - side effects
    - Data: Static immutable information
    - Calculation: Info in and out - always same result - pure functions
    ## Higher order, First class
    ## Working with immutable
    ## Data modelling
    ## Architectural patterns (onion, state machine)
    """
    , Slides.md """
    # Why does it matter?

    benfits by comparison: debugging, reading, testing, trusting - declarative vs imperitive
    When you use this... do you really know what this is?
    Declarative code is readable
    Testing is easier when layers are isolated - we can rely on the outcome of our calculations regardless of what order they are done it
    - we can define our data specification and trust it will always be so
    - special attention can be paid to the action layer.
    """
    , Slides.md """
    # Intrigued?

    Introduce slowly.
    Take the plunge: haskell elm clojure
    """
    , Slides.md """ # Thanks!"""
    ]
