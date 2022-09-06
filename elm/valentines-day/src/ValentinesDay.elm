module ValentinesDay exposing (..)


type Approval
    = Yes
    | No
    | Maybe


type Cuisine
    = Korean
    | Turkish


type Genre
    = Crime
    | Horror
    | Romance
    | Thriller


type Activity
    = BoardGame
    | Chill
    | Movie Genre
    | Restaurant Cuisine



-- Improved, shorter version


rateActivity : Activity -> Approval
rateActivity activity =
    case activity of
        Movie Romance ->
            Yes

        Restaurant Korean ->
            Yes

        Restaurant Turkish ->
            Maybe

        _ ->
            No



-- OLD
-- rateActivity : Activity -> Approval
-- rateActivity activity =
--     case activity of
--         BoardGame ->
--             No
--         Chill ->
--             No
--         Movie genre ->
--             case genre of
--                 Romance ->
--                     Yes
--                 _ ->
--                     No
--         Restaurant cuisine ->
--             case cuisine of
--                 Korean ->
--                     Yes
--                 Turkish ->
--                     Maybe