module Content exposing (slidesMarkdown)

import Html.Styled as Html exposing (blockquote, div, h1, img, p, text)
import Html.Styled.Attributes exposing (src, style)
import Slides


slidesMarkdown : List Slides.Slide
slidesMarkdown =
    -- html, htmlFragments, md, mdFragments
    [ Slides.md """
    # Let's get functional
    ---
    ### Katja Mordaunt
    email: katja@codereading.club

    github: @katjam

    ---
    ### Slides for this talk
    https://get-functional.netlify.app
    """
    , Slides.mdFragments
        [ "# This talk"
        , "## What is functional programming?"
        , "## Is it for me? Where do I start?"
        , "## Why does it matter?"
        ]
    , Slides.md """
    # Functional thinking...

    ![History of Functional](/history.jpg)

    """
    , Slides.md """
    # Functional words...

    ![Functional vocabulary](/vocab.jpg)

    """
    , Slides.html
        (div []
            [ h1 [ style "padding-top" "20px" ] [ text "Should we be scared?" ]
            , div [ style "display" "flex" ]
                [ blockquote [ style "font-size" "1.5rem", style "margin" "0 0 0 -50px" ]
                    [ text "\"You can essentially be very active using monadic things without ever talking about it.\""
                    , p [ style "font-size" "1.2rem", style "margin-left" "50px" ]
                        [ text "- Evan Czaplicki (Creator of Elm)" ]
                    , img [ src "/apples.png", style "max-width" "100%", style "margin-left" "-20px" ] []
                    ]
                , img [ src "/grouptheory.png", style "height" "600px", style "margin-bottom" "50px" ] []
                ]
            ]
        )
    , Slides.md """
    # Let's start with some basic principles
    ![3 principles of functional programming](/3principles.jpg)
    """
    , Slides.mdFragments
        [ "# You already got this!"
        , "## Values that cannot change once created"
        , """
        ```javascript
        const coolestConferenceEver = "Codebar Festival";
        ```"""
        , "## Functions without side-effects"
        , """
        ```javascript
        function exaggerateByTen(number) {
          return number * 10;
        }
        ```"""
        , "## Passable & Returnable functions"
        , """
        ```javascript
        const howCool = function(quantityOfCool, thing) {
          return function(thing) { 
            return thing + " is " + quantityOfCool + " times more awesome than Functions!"; 
          }
        }
        const tenTimesCoolness = howCool(exagerateByTen(10));
        console.log(tenTimesCoolness(coolestConferenceEver));

        >> Codebar Festival is 100 times more awesome than Functions!
        ```"""
        ]
    , Slides.mdFragments
        [ """
         # But do we got this?
          ## No side-effects & immutable data"""
        , "- ### Nothing can change"
        , "- ### No such thing as time"
        , "- ### No random"
        , "- ### No input or output"
        , "- ### No connected database"
        ]
    , Slides.md """
    # Skills for functional
    ## Know your code (Actions, Data, Calculations)
    ## Higher order, First class functions
    ## Working with immutable data
    ## Data modelling
    ## Architectural patterns

    """
    , Slides.mdFragments
        [ "# Identify *Data*"
        , "## Values that cannot change once created (immutable)"
        , """
        ```javascript
        const coolestConferenceEver = "Codebar Festival";
        ```
        ```elm
        coolestConferenceEver: String
        coolestConferenceEver = "Codebar Festival";
        ```
        """
        , """
        ```javascript
        const emailSendDetails = {
          from: "codebarFestival@example.com",
          subject: "Thank you, Kimberly & team!"
        }
        ```
        ```elm
        emailSendDetails : EmailSendDetails
        emailSendDetails =
            { from: "codebarFestival@example.com"
            , subject: "Thank you, Kimberly & team!"
            }
        ```"""
        ]
    , Slides.mdFragments
        [ "# Identify *Calculations*"
        , "## Functions without side-effects (Pure Functions)"
        , """
        ```javascript
        function exaggerateByTen(number) {
          return number * 10;
        }
        ```
        ```elm
        exaggerateByTen : Int -> Int
        exaggerateByTen number =
          number * 10
        }
        ```"""
        , """
        ```javascript
        function generateEmail(name, email) {
          return { to: email, body: "Dear " + name + ", Celebrate with us!" }
        }
        ```
        ```elm
        generateEmail : String -> String -> Email
        generateEmail name email =
            { to: email, body: "Dear " ++ name + ", Celebrate with us!" }
        ```"""
        ]
    , Slides.mdFragments
        [ "# Identify *Actions*"
        , "## Functions that cause side effects (Impure Functions)"
        , """
        ```javascript
        console.log(tenTimesCoolness(coolestConferenceEver));
        ```
        ```elm
        _ = Debug.log "Coolness statement"
            (tenTimesCoolness coolestConferenceEver)
        ```"""
        ]
    , Slides.md """
    # Higher Order & First Class functions

    """
    , Slides.md """
    # Working with immutable data

    """
    , Slides.md """
    # Data modelling

    """
    , Slides.md """
    # Architectural Patterns

    ![The Elm Architecture](/tea.jpg)

    """
    , Slides.md """
    # Why does it matter?

    """
    , Slides.md """
    # Intrigued?

    ## Static Types + Functional --> Haskell, Elm, Reason ML
    ## Dynamic Types + Functional --> Clojure, Elixir, ClojureScript

    - [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book.html)
    - [Monads and Gonads](https://www.youtube.com/watch?v=dkZFtimgAcM) talk by Douglas Crockford
    - [Let's be mainstream](https://www.youtube.com/watch?v=oYk8CKH7OhE) talk by Evan Czaplicki
    - [Impossible states impossible](https://www.youtube.com/watch?v=IcgmSRJHu_8) talk by Richard Feldman
    - [Immutable relational data](https://www.youtube.com/watch?v=28OdemxhfbU)
    - [Eric Normand podcast, book & Clojure tutorials](https://lispcast.com/)

    """
    , Slides.md """ # Thanks!"""
    ]
