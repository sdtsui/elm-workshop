module Main (..) where

import StartApp
import ElmHub exposing (..)
import Effects exposing (Effects)
import Task exposing (Task)
import Html exposing (Html)

--hints:
  -- must do sorting ourselves
  -- func on List documentation ... sort from the List
  -- List.sortBy
  -- convert from a List, into a Dict, sort by ...
    -- set result.
main : Signal Html
main =
  app.html


app : StartApp.App Model
app =
  StartApp.start
    { view = view
    , update = update
    , init = ( initialModel, Effects.task (searchFeed initialModel.query) )
    , inputs = []
    }


port tasks : Signal (Task Effects.Never ())
port tasks =
  app.tasks
