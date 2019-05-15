module Main exposing (main)

import Browser
import Html exposing (img)
import Html.Attributes exposing (src)
import TypedSvg exposing (circle, g, polygon, rect, svg)
import TypedSvg.Attributes exposing (class, points, viewBox)
import TypedSvg.Attributes.InPx exposing (cx, cy, height, r, width, x, y)
import TypedSvg.Core exposing (Svg)


main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


type alias Model =
    { userState : String }


type RL
    = R
    | L


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model ""
    , Cmd.none
    )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Browser.Document Msg
view model =
    { title = "Apollo Command Module Control Panel"
    , body =
        [ img [ src "./images/base.jpg" ] []
        , svg
            [ width 2400
            , height 618
            , viewBox 0 0 2400 618
            ]
            [ panels
            ]
        ]
    }


panels : Svg msg
panels =
    g [ class [ "panels" ] ]
        [ panel_1
        , panel_25
        , panel_26
        ]


panel_1 : Svg msg
panel_1 =
    g [] [ polygon [ points [ ( 850, 10 ), ( 850, 110 ), ( 670, 110 ), ( 820, 20 ) ] ] [] ]


panel_25 : Svg msg
panel_25 =
    g [] [ polygon [ points [ ( 30, 215 ), ( 445, 255 ), ( 400, 455 ), ( 60, 450 ) ] ] [] ]


panel_26 : Svg msg
panel_26 =
    g [] [ polygon [ points [ ( 372, 11 ), ( 540, 40 ), ( 445, 255 ), ( 330, 240 ) ] ] [] ]


boiler : Svg msg
boiler =
    let
        centerX =
            0

        centerY =
            151
    in
    g [ class [ "boiler" ] ]
        [ circle [ cx centerX, cy centerY, r 79 ] []
        , circle [ cx centerX, cy centerY, r 67 ] []
        , circle [ cx centerX, cy centerY, r 64 ] []
        , circle [ cx centerX, cy centerY, r 62 ] []
        , circle [ cx centerX, cy centerY, r 52 ] []
        , circle [ cx centerX, cy centerY, r 50 ] []
        ]


headLight : Svg msg
headLight =
    let
        centerX =
            0

        centerY =
            98
    in
    g [ class [ "head-light" ] ]
        [ circle [ cx centerX, cy centerY, r 150 ] []
        , circle [ cx centerX, cy centerY, r 120 ] []
        , circle [ cx centerX, cy centerY, r 90 ] []
        ]


numberPlate : Svg msg
numberPlate =
    let
        w =
            650

        h =
            180

        cx =
            -(w / 2)

        cy =
            1510 - (h / 2)
    in
    g [ class [ "number-plate" ] ]
        [ rect [ x cx, y cy, width w, height h ] []
        ]



-- COUPLER


coupler : Svg msg
coupler =
    g [ class [ "coupler" ] ]
        [ frame
        , fogLamps
        ]


frame : Svg msg
frame =
    let
        w =
            2140

        h =
            370

        centerX =
            -(w / 2)

        centerY =
            3080 - (h / 2)
    in
    g [ class [ "frame" ] ]
        [ rect [ x centerX, y centerY, width w, height h ] []
        , rect [ x centerX, y centerY, width w, height 30 ] []
        , g
            []
            ([ -380, -110, 110, 380 ]
                |> List.map
                    (\d ->
                        g []
                            [ circle [ cx d, cy (centerY + 120), r 15 ] []
                            , circle [ cx d, cy (centerY + 290), r 15 ] []
                            ]
                    )
            )
        ]


fogLamps : Svg msg
fogLamps =
    g []
        [ fogLamp L
        , fogLamp R
        ]


fogLamp : RL -> Svg msg
fogLamp rl =
    let
        sign =
            case rl of
                R ->
                    1

                L ->
                    -1

        centerX =
            825 * sign

        centerY =
            2590
    in
    g [ class [ "fog-lamp" ] ]
        [ circle [ cx centerX, cy centerY, r 140 ] []
        , circle [ cx centerX, cy centerY, r 110 ] []
        , circle [ cx centerX, cy centerY, r 100 ] []
        ]
