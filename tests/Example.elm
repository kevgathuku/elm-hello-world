module Example exposing (..)

import Test exposing (..)
import Expect
import Test.Html.Query as Query
import Test.Html.Selector exposing (text)
import Main


suite : Test
suite =
    describe "App Tests"
        [ test "Correctly Renders Model Content" <|
            \() ->
                Main.view { message = "Semaphore" }
                    |> Query.fromHtml
                    |> Query.has [ text "Hello, Semaphore!" ]
        , test "updates initialModel message" <|
            \_ ->
                Main.initialModel
                    |> Main.update Main.Switch
                    |> Expect.equal { message = "Elm" }
        , test "switches back to initialModel message" <|
            \_ ->
                { message = "Elm!" }
                    |> Main.update Main.Switch
                    |> Expect.equal Main.initialModel
        ]
