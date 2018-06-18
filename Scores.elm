module Main exposing (..)

import Html exposing (text)


multiplyer =
    2


scores =
    [ 316, 320, 312, 370, 337, 318, 314 ]


doubleScores scores =
    List.map (\x -> x * multiplyer) scores


main =
    doubleScores scores
        |> toString
        |> Html.text
