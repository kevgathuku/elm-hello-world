module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)


-- import Html.Attributes exposing (..)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }



-- MODEL


type alias Model =
    { message : String }


initialModel : Model
initialModel =
    { message = "world" }



-- UPDATE


type Msg
    = Switch


update : Msg -> Model -> Model
update msg model =
    case msg of
        Switch ->
            if model.message == "world" then
                { model | message = "Elm" }
            else
                { model | message = "world" }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ text ("Hello, " ++ model.message ++ "!")
        , button [ onClick Switch ] [ text "Switch" ]
        ]
