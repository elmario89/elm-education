module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


guardianNames =
    test "only 2 guardians have names with less than 6 characters"
        (\_ ->
            let
                guardians =
                    [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]
            in
                guardians
                    |> List.map String.length
                    |> List.filter (\x -> x < 6)
                    |> List.length
                    |> Expect.equal 2
        )
