module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String, surname : String, age : Int }


persons =
    [ Person "Mikhail" "Smirnov" 28, Person "Andreas" "Rios" 33, Person "Example" "Person" 7 ]


main =
    List.sortBy .age persons
        |> List.map .age
        |> toString
        |> Html.text
