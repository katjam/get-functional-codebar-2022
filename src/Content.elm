module Content exposing (slidesMarkdown)

import Html.Styled as Html exposing (blockquote, div, h1, h2, img, p, text)
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
        , """
        ## Values that cannot change once created
        ```javascript
        const coolestConferenceEver = "Codebar Festival";
        ```"""
        , """
        ## Functions without side-effects
        ```javascript
        function exaggerateByTen(number) {
          return number * 10;
        }
        ```"""
        , """
        ## Assignable, passable & returnable functions
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
        , "- ### No use of random"
        , "- ### No input or output"
        , "- ### No connected database"
        ]
    , Slides.md """
    # Skills for functional
    ## (as proposed by Eric Normand)

    ![5 stages of functional](/5steps.jpg)
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
        , "## Functions with side-effects (Impure Functions)"
        , """
        ```javascript
        console.log(tenTimesCoolness(coolestConferenceEver));
        ```
        ```elm
        _ = Debug.log "Coolness statement"
            (tenTimesCoolness coolestConferenceEver)
        ```"""
        , """
        ```javascript
        fetch('https://example.com/email-sender', 
          { method: 'POST', body: JSON.stringify(emailData) }
        ).then((response) => { return response.json(); }
        ).then((res) => {
          if (res.status === 201) { console.log("Tada!"); }
        }).catch((error) => {
          console.log("Oops: ", error);
        });
        ```
        ```elm
        type Msg
            = SentMailRequest (Result Http.Error String)

        sendEmail : Http.Body -> Cmd Msg
        sendEmail =
            Http.post
                { url = "https://example.com/email-sender"
                , body = emailJson
                , expect = Http.expectString SentMailRequest
            }
        }
        ```"""
        ]
    , Slides.mdFragments
        [ "# Higher Order & First Class functions"
        , """
        ```javascript
        function exaggerate(number, multiplier) {
          return number * multiplier;
        }

        function curry2Helper(myFunction) {
          return function(firstArg) {
            return function(secondArg) {
              return myFunction(firstArg, secondArg);
            }
          }
        }
        
        const curriedMultiplier = curry2Helper(exaggerate);
        const exaggerateFrom5 = curriedMultiplier(5); // [Function (anonymous)]
        const exaggerateByTen = exaggerateFrom5(10); // 50
        ```
        """
        , """
        ```elm
        exaggerate : Int -> Int -> Int
        exaggerate number multiplier =
            number * multiplier
        
        exaggerateFrom5 = exaggerate 5 -- <function> : Int -> Int
        exaggerateByTen = exaggerateFrom5 10 -- 50 : Int
        ```"""
        ]
    , Slides.mdFragments
        [ "# Working with immutable"
        , """
    ```javascript
    const initialState = { first: { second: { id1: { fourth: 'a' }, id2: { fourth: 'b' } } } }

    function updateVeryNestedField(state, action) {
      return {
        ...state,
        first: {
          ...state.first,
          second: {
            ...state.first.second,
            [action.someId]: {
              ...state.first.second[action.someId],
              fourth: action.someValue
            }
          }
        }
      }
    }

    function updateNestedState(state, action) {
      let nestedState = state.nestedState
      nestedState.nestedField = action.data // This is mutation
      return { ...state, nestedState }
    }

    import { createReducer } from '@reduxjs/toolkit'
    const reducer = createReducer(initialState, {
      UPDATE_ITEM: (state, action) => {
        state.first.second[action.someId].fourth = action.someValue
      }
    })
    ```
    """
        ]
    , Slides.mdFragments
        [ "# Data modelling"
        , """
    ```javascript
    [ { name: "James",
        age: 30,
        pets: "2 cats, 1 parrot, 1 dog"
      }, { name: "Janis",
        age: 30,
        pets: "1 cat, 2 fish"
      }, { name: "Georgio",
        age: 30,
        pets: null
      }
    ]
    ```
    """
        , """
    ```javascript
    { thirtyYearOlds :
      [ { james : { dog: true, otherPets: "1 parrot, 2 cats" }},
        { janis : { dog: false, otherPets: "1 cat, 2 fish" }},
        { georgio : { dog: false, otherPets: "" }},
      ]
    }

    ```
    ```elm
    type alias Person = (String, Int, {cat: Int, fish: Int, parrot: Int})
    type alias People = { withDog : List Person , withoutDog: List Person }

    peopleByHasDog : People
    peopleByHasDog = 
        { withDog: [("James", 30, { cat: 2, fish: 0, parrot: 1 })]
        , withoutDog: [("Janis", 30, { cat: 1, fish: 2, parrot: 0 })
                 ,("Georgio", 30, { cat: 0, fish: 0, parrot: 0 })
                 ]
        }
    ```
    """
        ]
    , Slides.html
        (div []
            [ h1 [] [ text "Architectural Patterns" ]
            , img [ src "/tea.jpg", style "width" "50%", style "margin-left" "-50px" ] []
            , img
                [ src "/onion.jpg"
                , style "width" "50%"
                , style "padding-left" "20px"
                ]
                []
            ]
        )
    , Slides.html
        (div []
            [ h1 [] [ text "Why does it matter?" ]
            , h2
                [ style "margin-top" "0"
                , style "margin-left" "250px"
                ]
                [ text "...because we are humans!" ]
            , img
                [ src "/humans.jpg"
                , style "height" "260px"
                , style "width" "65%"
                ]
                []
            , img
                [ src "/computers.jpg"
                , style "height" "260px"
                , style "width" "65%"
                , style "margin-left" "160px"
                ]
                []
            ]
        )
    , Slides.md """
    # What now?

    ---

    ## Some Functional languages to try

    ### With Static Types:  Elm, Haskell, Reason ML

    ### With Dynamic Types:  Clojure, Elixir, ClojureScript

    ---

    ## Some stuff to read and watch

    - [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book.html) book by Harold Abelson, Gerald Jay Sussman with Julie Sussman
    - [Let's be mainstream](https://www.youtube.com/watch?v=oYk8CKH7OhE) talk by Evan Czaplicki
    - [Impossible states impossible](https://www.youtube.com/watch?v=IcgmSRJHu_8) talk by Richard Feldman
    - [LispCast.com](https://lispcast.com/) - book, podcast & Clojure tutorials by Eric Normand
    - [Monads and Gonads](https://www.youtube.com/watch?v=dkZFtimgAcM) talk by Douglas Crockford
    """
    , Slides.md """ # Thanks!"""
    ]
