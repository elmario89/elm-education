module Main exposing (..)

import Html exposing (text)


type Greeting
    = Howdy
    | Hola
    | Namaste String
    | NumericalHi Int Int


sayHello : Greeting -> String
sayHello greeting =
    case greeting of
        Howdy ->
            "How y'all doin'?"

        Hola ->
            "Hola amigo!"

        Namaste message ->
            message ++ "test"

        NumericalHi value1 value2 ->
            value1 + value2 |> toString


main =
    NumericalHi 12 190
        |> sayHello
        |> toString
        |> Html.text
