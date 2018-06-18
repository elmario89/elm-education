module Main exposing (..)

import Html exposing (text)


scores =
    [ 316, 320, 312, 370, 337, 318, 314 ]


isLessThan maxScore score =
    score < maxScore


checkScore scores =
    List.filter (isLessThan 320) scores


main =
    checkScore scores
        |> toString
        |> Html.text
