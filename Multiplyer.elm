module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String, surname : String, age : Int }


persons =
    [ Person "Mikhail" "Smirnov" 28, Person "Andreas" "Rios" 33, Person "Example" "Person" 7 ]


multiplyByProvidedNumber number =
    let
        multiplyer =
            5
    in
        number * multiplyer


main =
    List.sortBy .age persons
        |> List.map (\x -> multiplyByProvidedNumber x.age)
        |> toString
        |> Html.text
