module Main exposing (..)

import Html exposing (text)


type Greeting
    = Howdy
    | Hola


sayHello : Greeting -> String
sayHello greeting =
    case greeting of
        Howdy ->
            "How y'all doin'?"

        Hola ->
            "Hola amigo!"


main =
    sayHello Hola
        |> toString
        |> Html.text
