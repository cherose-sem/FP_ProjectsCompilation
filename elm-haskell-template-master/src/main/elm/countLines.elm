-- Read all about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/forms.html

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)


main =
  Html.beginnerProgram
    { model = createModel
    , view = showView
    , update = doUpdate
    }



-- MODEL


type alias Model =
  { count: Int
  }


createModel : Model
createModel =
  Model 9

-- UPDATE


type Message
    = Click
    | Decrement
    | Increment

doUpdate : Message -> Model -> Model
doUpdate msg model =
  case msg of
    Click -> model

    Increment ->
       {model | count = model.count + 1}


    Decrement ->
       {model | count = model.count - 1}



-- VIEW


showView : Model -> Html Message
showView model =
  div []
    [
      button [ onClick Decrement ] [ text "-" ]
      ,button [ onClick Increment ] [ text "+" ]
      ,div [] (List.map makeLine (List.range 1 model.count))
    ]

makeLine : Int -> Html msg
makeLine n =
  div [ style [] ] [ text ("this is line " ++ (toString n))]

{--
viewValidation : Model -> Html msg
viewValidation model =
  let
    (color, message) =
      if model.password == model.passwordAgain then
        ("green", "OK")
      else
        ("red", "Passwords do not match!")
  in
    div [ style [("color", color)] ] [ text message ]
--}
