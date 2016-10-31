module Main exposing (..)

import Html exposing (..)
import Html.App as App


type alias Model =
    { players : List Player
    , name : String
    , playerId : Maybe Int
    , plays : List Play
    }


type alias Player =
    { id : Int
    , name : String
    , points : Int
    }


type alias Play =
    { id : Int
    , playerId : Int
    , name : String
    , points : Int
    }


initModel : Model
initModel =
    { players = []
    , name = ""
    , playerId = Nothing
    , plays = []
    }


type Msg
    = Edit Player
    | Input String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Edit player ->
            { model | name = player.name, playerId = Just player.id }

        Input name ->
            { model | name = name }


view : Model -> Html msg
view model =
    div []
        [ h1 [] [ text "Score keeper!" ]
        ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }
