module Main exposing (..)

import Html exposing (text)


list =
    [ 1, 2, 4, 190, 4, 4, 5 ]


checkValue value =
    if value <= 5 then
        value
    else
        0


calculateList list =
    let
        accumulate =
            0
    in
        List.map checkValue list
            |> List.foldr (+) accumulate


main =
    calculateList list
        |> toString
        |> Html.text
