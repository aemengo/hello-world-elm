module Main exposing (main)

import Browser exposing (Document)
import Html exposing (..)
import Html.Attributes exposing (..)


main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = \m -> Sub.none
        }


type alias Model =
    { count : Int
    , somethingElseNotUsed : Bool
    }


type Msg
    = Noop


init : () -> ( Model, Cmd Msg )
init () =
    ( { count = 0
      , somethingElseNotUsed = False
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Noop ->
            -- This is how you modify state in a record.
            -- Modifying creates a new object.
            -- ( { model |
            --     somethingElseNotUsed = True
            --   }
            -- , Cmd.none
            -- )
            ( model, Cmd.none )


view : Model -> Document Msg
view model =
    { title = "Hello World Elm"
    , body =
        [ div []
            [ h1 [] [ text "Hi Nat! 😊" ]
            , p []
                [ text "The count is: "
                ]
            ]
        ]
    }
