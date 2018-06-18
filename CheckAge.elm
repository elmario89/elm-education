module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String, surname : String, age : Int }


mikhail =
    Person "Mikhail" "Smirnov" 28


validateAge person =
    person.age >= 18


showAccessMessage isAdult =
    if isAdult then
        "You are allowed to enter here"
    else
        "Please leave the site"


main =
    validateAge mikhail
        |> showAccessMessage
        |> toString
        |> Html.text
