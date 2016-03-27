module Main (..) where

import StartApp
import ElmHub exposing (..)
import Effects exposing (Effects)
import Task exposing (Task)
import Html exposing (Html)
import Signal
import Json.Encode
import Json.Decode

-- only one specific interface to JS with these ports
  -- only one main...
    -- module is line 15: looks for lowercase main
main : Signal Html
main =
  app.html


app : StartApp.App Model
app =
  StartApp.start
    { view = view
    , update = update search.address
    , init = ( initialModel, Effects.task (searchFeed search.address initialModel.query) )
    , inputs = [ responseActions ]
    }


port tasks : Signal (Task Effects.Never ())
port tasks =
  app.tasks


search : Signal.Mailbox String
search =
  Signal.mailbox ""


port githubSearch : Signal String
port githubSearch =
  search.signal


responseActions : Signal Action
responseActions =
  Signal.map decodeGithubResponse githubResponse


decodeGithubResponse : Json.Encode.Value -> Action
decodeGithubResponse value =
  case Json.Decode.decodeValue responseDecoder value of
    Ok results ->
      SetResults results

    Err _ ->
      DoNothing


port githubResponse : Signal Json.Encode.Value

-- Qs: What are the methods on Elm : worker, embed, and etc? 
-- 