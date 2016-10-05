module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App
import String


-- model


type alias Model =
    Int


initModel : Model
initModel =
    0



-- update


type Msg
    = AddCalorie
    | Input String
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalorie ->
            model + 1

        Input val ->
            case String.toInt val of
                Ok input ->
                    input

                Err err ->
                    model

        Clear ->
            initModel



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 []
            [ text ("Total Calories: " ++ (toString model)) ]
        , input
            [ type' "text"
            , onInput Input
            , value
                (if model == 0 then
                    ""
                 else
                    toString model
                )
            ]
            []
        , button
            [ type' "button"
            , onClick AddCalorie
            ]
            [ text "Add" ]
        , button
            [ type' "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
