module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String, surname : String, age : Int }


mikhail =
    Person "Mikhail" "Smirnov" 28


validateAge person =
    person.age >= 18


main =
    validateAge mikhail
        |> toString
        |> Html.text
