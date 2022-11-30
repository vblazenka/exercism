module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

type Layers = Integer
type Minutes = Integer

expectedMinutesInOven :: Minutes
expectedMinutesInOven = 40

preparationTimeInMinutes :: Layers -> Minutes
preparationTimeInMinutes = (* 2)

elapsedTimeInMinutes :: Layers -> Minutes -> Minutes
elapsedTimeInMinutes =
    (+) . preparationTimeInMinutes