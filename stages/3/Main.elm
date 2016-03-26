module Main (..) where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import StartApp.Simple as StartApp
import Signal exposing (Address)

{-
--hint: 
  -- List.filter (\num -> num >2) [1,2,3]
-}

type alias Model =
  { query : String
  , results : List SearchResult
  }


type alias SearchResult =
  { id : ResultId
  , name : String
  , stars : Int
  }


type alias ResultId =
  Int


initialModel : Model
initialModel =
  { query = "tutorial"
  , results =
      [ { id = 1
        , name = "TheSeamau5/elm-checkerboardgrid-tutorial"
        , stars = 66
        }
      , { id = 2
        , name = "grzegorzbalcerek/elm-by-example"
        , stars = 41
        }
      , { id = 3
        , name = "sporto/elm-tutorial-app"
        , stars = 35
        }
      , { id = 4
        , name = "jvoigtlaender/Elm-Tutorium"
        , stars = 10
        }
      , { id = 5
        , name = "sporto/elm-tutorial-assets"
        , stars = 7
        }
      ]
  }


view : Address Action -> Model -> Html
view address model =
  div
    [ class "content" ]
    [ header
        []
        [ h1 [] [ text "ElmHub" ]
        , span [ class "tagline" ] [ text "“Like GitHub, but for Elm things.”" ]
        ]
    , ul
        [ class "results" ]
        (List.map (viewSearchResult address) model.results)
    ]


viewSearchResult : Address Action -> SearchResult -> Html
viewSearchResult address result =
  let
    removeAction : Action
    removeAction = { 
      actionType = "REMOVE"
      , payload = result.id
    }
  in 
  li
    []
    [ span [ class "star-count" ] [ text (toString result.stars) ]
    , a
        [ href ("https://github.com/" ++ result.name), target "_blank" ]
        [ text result.name ]
    , button
        [ class "hide-result"
        , onClick address removeAction ]
        [ text "X" ]
    ]

-- can parameterize 
  -- unlike records. each union type constructor is more flexible. 
type alias Action =
  { 
    actionType: String
    ,  payload : ResultId 
  }


update : Action -> Model -> Model
update action model =
  if (Debug.log "actiontype :" action.actionType) == "REMOVE" then
    --http://puu.sh/nUZjR/8f7064da0b.png
    { model | results = List.filter (\result -> result.id /= action.payload) model.results}
  else
  model


main =
  StartApp.start
    { view = view
    , update = update
    , model = initialModel
    }
