module Content exposing (slidesMarkdown)

import Slides


slidesMarkdown : List Slides.Slide
slidesMarkdown =
    -- html, htmlFragments, md, mdFragments
    [ Slides.md "Hello"
    , Slides.md "hmmmm"
    , Slides.md """
    ```elm
    type Hello =
        NotPure
    ```
    """
    ]
