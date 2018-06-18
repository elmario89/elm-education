module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String, surname : String, age : Int }


persons =
    [ Person "Mikhail" "Smirnov" 28, Person "Andreas" "Rios" 33, Person "Example" "Person" 7 ]


sortByAge person1 person2 =
    compare person1.age person2.age


main =
    List.sortWith sortByAge persons
        |> List.map (\person -> person.age)
        |> toString
        |> Html.text
