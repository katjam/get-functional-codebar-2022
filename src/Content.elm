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
    , Slides.md """ 
    # This talk

    ## What is functional programming?
    ## Is it for me? Where do I start?
    ## Why does it matter?

    """

    -- Most writing about is historically academic
    -- Seems impractical in production - no side effects
    , Slides.md """
    # History

    """

    -- [cCc] wordCloud drawing of vocab
    , Slides.md """
    # Vocab

    """

    -- Nope. Actually functional makes things easier.
    , Slides.md """
    # Should we be scared?
    """
    , Slides.md """
    # You already got this!
    """
    , Slides.md """
    # Skills for functional

    """
    , Slides.md """
    # Why does it matter?

    """
    , Slides.md """
    # Intrigued?

    """
    , Slides.md """ # Thanks!"""
    ]
