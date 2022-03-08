module Content exposing (slidesMarkdown)

import Html.Styled as Html exposing (blockquote, div, h1, img, p, text)
import Html.Styled.Attributes exposing (src, style)
import Slides


slidesMarkdown : List Slides.Slide
slidesMarkdown =
    -- html, htmlFragments, md, mdFragments
    [ Slides.md """
    # Let's get functional

    ### Katja Mordaunt
    email: katja@codereading.club

    github: @katjam

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
            [ h1 [] [ text "Should we be scared?" ]
            , div [ style "display" "flex" ]
                [ blockquote [ style "margin-left" "-50px" ]
                    [ text "\"You can essentially be very active using monadic things without ever talking about it.\""
                    , p [ style "font-size" "1.3rem", style "margin-left" "50px" ]
                        [ text "- Evan Czaplicki (Creator of Elm)" ]
                    , img [ src "/apples.png", style "max-width" "100%", style "margin-bottom" "20px" ] []
                    ]
                , img [ src "/grouptheory.png", style "max-width" "52%", style "margin-bottom" "50px" ] []
                ]
            ]
        )
    , Slides.md """
    # It's easy... 3 principles!
    ![3 principles of functional programming](/3principles.jpg)
    """
    , Slides.mdFragments
        [ "# You already got this!"
        , "## Immutability"
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
    , Slides.md """
    # But do we got this?

    ## Pure
    ## Immutable
    ## Outside world

    """
    , Slides.md """
    # Skills for functional
    ## Know your code (Actions, Data, Calculations)
    ## Higher order, First class functions
    ## Working with immutable
    ## Data modelling
    ## Architectural patterns (onion, state machine)

    """
    , Slides.md """
    # Why does it matter?

    """
    , Slides.md """
    # Intrigued?

    - Static types + functional --> try elm
    https://www.youtube.com/watch?v=oYk8CKH7OhE

    """
    , Slides.md """ # Thanks!"""
    ]
