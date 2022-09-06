module MariosMarvellousLasagna exposing (remainingTimeInMinutes)


remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes layers elapsedMinutes =
    let
        expectedMinutesInOven =
            40

        preparationTimeInMinutes : Int -> Int
        preparationTimeInMinutes l =
            l * 2
    in
    expectedMinutesInOven + preparationTimeInMinutes layers - elapsedMinutes
