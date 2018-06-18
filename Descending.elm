module Main exposing (..)

import Html exposing (text)


descending a b =
    case compare a b of
        LT ->
            GT

        GT ->
            LT

        EQ ->
            EQ


main =
    [ 316, 320, 312, 370, 337, 318, 314 ]
        |> List.sortWith descending
        |> toString
        |> Html.text
