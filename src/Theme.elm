module Theme exposing (styles)

import Css exposing (..)
import Css.Global exposing (class, img, pre)


styles : List Css.Global.Snippet
styles =
    [ Css.Global.h1 [ marginBottom (rem 0.5) ]
    , Css.Global.h2 [ marginBottom (rem 0.2) ]
    , img [ maxWidth (px 650), borderRadius (px 65) ]
    , Css.Global.pre [ color (hex "#fff") ]
    , Css.Global.blockquote
        [ fontSize (rem 2.1)
        , maxWidth (pct 60)

        --, Css.Global.adjacentSiblings [ Css.Global.p [ fontSize (rem 1.5), marginLeft (px 80), marginTop (px 0) ] ]
        ]
    ]
