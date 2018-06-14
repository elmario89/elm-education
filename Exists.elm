module Main exposing (..)

import Html exposing (text)


list =
    [ "Kaylee", "Jayne", "Malcolm" ]


person =
    "Jayne---"


checkIfPresented listOfPersons person =
    List.member person listOfPersons


isValid char =
    char /= '-'


clearChars word =
    String.filter isValid word


isPresented =
    clearChars person
        |> checkIfPresented list


drawMessage isPresented =
    if isPresented == True then
        "Person is in the list"
    else
        "Person is not in the list"


main =
    drawMessage isPresented
        |> Html.text
