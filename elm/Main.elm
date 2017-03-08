import Html exposing (Html, Attribute, input, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import String

-- FUN STUFF
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Time exposing (Time, second)
import WebSocket
import Mouse exposing (Position)
import Markdown


main = 
    Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL
type alias Model = Int
type alias InputModel = 
    { content: String }

model : Model
model = 
    0 

inputmodel : InputModel
inputmodel = 
    { content = "" }


-- UPDATE 
type Msg = Increment | Decrement
type InputMsg = Change String


update : Msg -> Model -> Model
update msg model = 
    case msg of 
        Increment -> 
            model + 1

        Decrement ->
            model - 1


inputupdate : InputMsg -> InputModel -> InputModel
inputupdate inputmsg inputmodel = 
    case inputmsg of
        Change newContent ->
            { inputmodel | content = newContent }

-- VIEW 
view: Model -> Html Msg 
view model = 
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model ) ]
        , button [ onClick Increment ] [ text "+" ]
        ]

inputview: InputModel -> Html InputMsg
inputview inputmodel = 
    div []
        [ input [ placeholder "Text to reverse", onInput Change ] []
        , div [] [ text (String.reverse inputmodel.content )] 
        ]