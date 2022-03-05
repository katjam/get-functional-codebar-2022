module Content exposing (slidesMarkdown)

import Slides


slidesMarkdown : List Slides.Slide
slidesMarkdown =
    -- html, htmlFragments, md, mdFragments
    [ --- [cCc] Robot image
      Slides.md """
    # Let's get functional

    ### Katja Mordaunt
    email: katja@codereading.club

    github: @katjam

    ### Slides for this talk
    https://get-functional.netlify.app

    ![Codebar Logo](/codebarlogo.png)
    """
    , Slides.mdFragments
        [ "# This talk"
        , "## What is functional programming?"
        , "## Is it for me? Where do I start?"
        , "## Why does it matter?"
        ]
    , Slides.md """
    # History

    """

    -- [cCc] wordCloud drawing of vocab
    , Slides.md """
    # Vocab

    """

    -- [cCc] Evan quote?
    , Slides.md """
    # Should we be scared?
    """
    , Slides.md """
    # You already got this!
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

    """
    , Slides.md """ # Thanks!"""
    ]
