module Theme exposing (styles)

import Css exposing (..)
import Css.Global exposing (class, img, pre)


styles : List Css.Global.Snippet
styles =
    [ img [ maxWidth (px 500) ]
    , Css.Global.pre [ color (hex "#fff") ]
    ]
