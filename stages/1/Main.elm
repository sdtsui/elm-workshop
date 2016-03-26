module Main (..) where

import Html exposing (..)
import Html.Attributes exposing (..)


model =
  { result =
      { id = 1
      , name = "TheSeamau5/elm-checkerboardgrid-tutorial"
      , stars = 99
      , link = "https://github.com/TheSeamau5/elm-checkerboardgrid-tutorial"
      }
  }


view model =
  div
    [ class "content" ]
    [ header
        []
        [ 
          text "ElmHub",
          span [ class "tagline" ] [ text "“Like GitHub, but for Elm things.”" ]
        ]
    , ul
        [ class "results" ]
        [ li
            []
            [ span [ class "star-count" ] [text (toString model.result.stars)]
              , a [href model.result.link] [text "Link"]
            ]
        ]
    ]


main =
  view model
