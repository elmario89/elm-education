port module Main exposing (..)

import Example
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Example.guardianNames


port emit : ( String, Value ) -> Cmd msg
