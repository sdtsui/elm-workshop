--module Component.SearchResult (Model) where --expose only Model, or Model(Model)... making internal state private
module Component.SearchResult (..) where


import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)
import Effects exposing (Effects)


{- private example 
case model of
  Model record ->


type alias ModelRecord =
  { id : Int
  , name : String
  , stars : Int
  , expanded : Bool
  }

type Model  =
  Model ModelRecord

-}


type alias Model =
  { id : Int
  , name : String
  , stars : Int
  , expanded : Bool
  }


type alias ResultId =
  Int


type Action
  = Expand
  | Collapse

update : Action -> Model -> ( Model, Effects Action )
update action model =
  case action of
    Expand ->
      ( { model | expanded = True}, Effects.none) -- make model have expanded state
    Collapse -> -- make model have collapsed state
      ( { model | expanded = False}, Effects.none)
  -- TODO make expand and collapse work
  --( model, Effects.none )


view : Address Action -> Model -> Html -- compile error?
view address model =
  li
    []
    <| if model.expanded then
        [ span [ class "star-count" ] [ text (toString model.stars) ]
        , a
            [ href ("https://github.com/" ++ model.name), target "_blank" ]
            [ text model.name ]
        , button
            -- TODO when the user clicks, send a Collapse action
            [ class "hide-result", onClick address Collapse ]
            [ text "X" ]
        ]
       else
        [ button
            -- TODO when the user clicks, send an Expand action
            [ class "expand-result" , onClick address Expand ]
            [ text "Show" ]
        ]
