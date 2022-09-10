module TisburyTreasureHunt exposing (..)

import Tuple exposing (first, second)


type alias TreasureLocation =
    ( Int, Char )


type alias Treasure =
    ( String, TreasureLocation )


type alias PlaceLocation =
    ( Char, Int )


type alias Place =
    ( String, PlaceLocation )


placeLocationToTreasureLocation : PlaceLocation -> TreasureLocation
placeLocationToTreasureLocation placeLocation =
    ( second placeLocation, first placeLocation )


treasureLocationMatchesPlaceLocation : PlaceLocation -> TreasureLocation -> Bool
treasureLocationMatchesPlaceLocation placeLocation treasureLocation =
    let
        ( plc, pli ) =
            placeLocation

        ( tli, tlc ) =
            treasureLocation
    in
    plc == tlc && pli == tli


countPlaceTreasures : Place -> List Treasure -> Int
countPlaceTreasures place treasures =
    Debug.todo "implement this function"


specialCaseSwapPossible : ( String, TreasureLocation ) -> ( String, PlaceLocation ) -> ( String, TreasureLocation ) -> Bool
specialCaseSwapPossible ( foundTreasure, _ ) ( place, _ ) ( desiredTreasure, _ ) =
    Debug.todo "implement this function"
