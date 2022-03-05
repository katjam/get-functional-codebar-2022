module Theme exposing (styles)

import Css exposing (..)
import Css.Global exposing (class, img, pre)


styles : List Css.Global.Snippet
styles =
    [ img [ maxWidth (px 650), borderRadius (px 65) ]
    , Css.Global.pre [ color (hex "#fff") ]
    ]
