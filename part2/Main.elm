module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


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


{-| TODO add a type annotation to this value
-}
model : Model
model =
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


elmHubHeader : Html a
elmHubHeader =
    header []
        [ h1 [] [ text "ElmHub" ]
        , span [ class "tagline" ] [ text "“Like GitHub, but for Elm things.”" ]
        ]


{-| TODO add a type annotation to this function
-}
view : Model -> Html a
view model =
    div [ class "content" ]
        [ elmHubHeader
        , ul [ class "results" ]
            {- TODO use model.results and viewSearchResult to display results -}
            (List.map (\result -> viewSearchResult result) model.results)
        ]


{-| TODO add a type annotation to this function
-}
viewSearchResult : SearchResult -> Html a
viewSearchResult result =
    li []
        [ span [ class "star-count" ] [ text (toString result.stars) ]
        , a [ href ("https://github.com/" ++ result.name), target "_blank" ]
            [ text result.name ]
        ]


{-| TODO add a type annotation to this value
-}
main : Html a
main =
    view model
