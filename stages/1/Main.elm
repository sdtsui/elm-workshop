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

--view model =
--  div 
--    [class "well"]
--    [
--      span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))
--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))
--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))
--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--      , span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))

--    ]

view model =
  div 
    [class "well"]
    (List.repeat 21 (
      span [class "well-row"] (List.repeat 11 (div [class "well-box"] []))
    ))

main =
  view model
