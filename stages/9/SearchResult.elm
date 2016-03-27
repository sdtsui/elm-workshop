module SearchResult (..) where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode exposing (Decoder, (:=))
import Signal exposing (Address)
import Dict exposing (Dict)

type alias ResultId =
  Int

type alias Model =
  { id : ResultId
  , name : String
  , stars : Int
  }


decoder : Decoder Model
decoder =
  Json.Decode.object3
    Model
    ("id" := Json.Decode.int)
    ("full_name" := Json.Decode.string)
    ("stargazers_count" := Json.Decode.int)


view : (ResultId -> action) -> Address action -> Model -> Html
view wrap address result =
  li
    []
    [ span [ class "star-count" ] [ text (toString result.stars) ]
    , a
        [ href ("https://github.com/" ++ result.name)
        , target "_blank"
        ]
        [ text result.name ]
    , button
        -- TODO onClick, send a delete action to the address
        -- onClick address   (DeleteById result.id)
        [ class "hide-result", onClick address (wrap result.id) ]
        [ text "X" ]
    ]
