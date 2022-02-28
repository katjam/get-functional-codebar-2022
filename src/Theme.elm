module Theme exposing (styles)

import Css exposing (..)
import Css.Global exposing (img)


styles : List Css.Global.Snippet
styles =
    [ img [ maxWidth (px 500) ] ]
