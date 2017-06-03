module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

--
-- Exercise 1b
-- This exercise is about reusing components with functions instead of objects.
-- Look at the view method. A lot of the code is duplicated there. Can you think
-- of a smarter way to write that?
-- Hint: write a helper-function.
--

-- Model
type alias Model =
  { status : Status }

-- union type
type Status =
    Single
  | Complicated
  | Relationship
  | Married
  | Other

-- UPDATE
type Msg = SetStatus Status

update : Msg -> Model -> ( Model, Cmd Msg )
update (SetStatus status) model = (Model status, Cmd.none)

view : Model -> Html Msg
view model =
  [fieldset []
     [ radio (SwitchTo Small) "Single"
        , radio (SwitchTo Medium) "It's complicated..."
        , radio (SwitchTo Large) "In a relationship"
        , radio (SwitchTo Large) "Married"
        ]
    , section [] [ text model.content ]
  ]

    [ label []
        [ input [ type_ "radio", name "status-radio", checked True, onClick (SetStatus Single) ] []
        , text "Single"
        ]
    , label []
        [ input [ type_ "radio", name "status-radio", onClick (SetStatus Complicated) ] []
        , text "It's complicated..."
        ]
    , label []
        [ input [ type_ "radio", name "status-radio", onClick (SetStatus Relationship) ] []
        , text "In a relationship"
        ]
    , label []
        [ input [ type_ "radio", name "status-radio", onClick (SetStatus Married) ] []
        , text "Married"
        ]
    , label []
        [ input [ type_ "radio", name "status-radio", onClick (SetStatus Other) ] []
        , text "Keep out of my private life!"
        ]
    , labelData "Keep out of my private life!" Other model
    ]

labelData : String -> Status -> Model -> Html msg
labelData title message isChecked =
    label []
    [ input [ type_ "radio", name "status-radio", checked isChecked, onClick message ] []
    , text title
    ]

main =
  Html.program
    { init = (Model Single, Cmd.none)
    , view = view
    , update = update
    , subscriptions = \m -> Sub.none
    }
