module Main exposing (main)

import Content
import Css exposing (..)
import Css.Global exposing (..)
import Slides exposing (..)
import Slides.Styles
import Theme


slidesOptions : Options
slidesOptions =
    { slidesDefaultOptions
        | style =
            List.append
                Theme.styles
            <|
                -- backgroundColorArg codeBackgroundColorArg fontSizeArg colorArg
                Slides.Styles.elmMinimalist
                    (hex "#dcf9f9")
                    (hex "#293940")
                    (px 18)
                    (hex "#3e2f40")
        , title = "Let's get functional - Codebar 2022"
    }


main =
    Slides.app slidesOptions Content.slidesMarkdown
