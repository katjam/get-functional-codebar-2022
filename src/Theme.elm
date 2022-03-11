module Theme exposing (styles)

import Css exposing (..)
import Css.Global exposing (class, img, pre)


styles : List Css.Global.Snippet
styles =
    [ Css.Global.h1 [ marginBottom (px 0) ]
    , Css.Global.h2 [ marginBottom (px 0) ]
    , img [ maxWidth (px 650), borderRadius (px 65) ]
    , Css.Global.pre [ color (hex "#fff"), marginTop (px -2) ]
    , Css.Global.a
        [ borderBottom2 (px 2) solid
        , color (hex "#293940")
        , fontWeight bold
        , textDecoration none
        ]
    , Css.Global.li [ marginBottom (px 10) ]
    , Css.Global.blockquote
        [ fontSize (rem 2.1)
        , maxWidth (pct 60)
        ]
    ]
