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
                Slides.Styles.elmMinimalist (hex "#fff") (hex "#ccc") (px 18) (hex "#000")
        , title = "Let's get functional - Codebar 2022"
    }


main =
    Slides.app slidesOptions Content.slidesMarkdown
