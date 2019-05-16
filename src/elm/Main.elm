module Main exposing (main)

import Browser
import Html exposing (img)
import Html.Attributes exposing (src)
import TypedSvg exposing (circle, g, polygon, rect, svg)
import TypedSvg.Attributes exposing (class, points, transform, viewBox)
import TypedSvg.Attributes.InPx exposing (cx, cy, height, r, width, x, y)
import TypedSvg.Core exposing (Svg)
import TypedSvg.Types exposing (Transform(..))


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
        [ img [ src "./images/base_0.jpg" ] []
        , svg
            [ width 2400
            , height 870
            , viewBox -1200 0 2400 870
            ]
            [ panels2
            ]
        ]
    }


panels2 : Svg msg
panels2 =
    g [ class [ "panels-2" ] ]
        [ panel_center
        , panel_center2
        , panel_right
        , g [ transform [ Scale -1 1 ] ]
            [ panel_center
            , panel_center2
            , panel_right
            ]
        ]


panel_center : Svg msg
panel_center =
    g []
        [ polygon
            [ points
                [ ( 0, 10 )
                , ( 200, 35 )
                , ( 200, 160 )
                , ( 340, 160 )
                , ( 325, 190 )
                , ( 325, 665 )
                , ( 295, 665 )
                , ( 115, 490 )
                , ( 0, 490 )
                ]
            ]
            []
        ]


panel_center2 : Svg msg
panel_center2 =
    g []
        [ polygon
            [ points
                [ ( 425, 115 )
                , ( 495, 165 )
                , ( 560, 175 )
                , ( 580, 195 )
                , ( 540, 235 )
                , ( 580, 270 )
                , ( 590, 265 )
                , ( 745, 455 )
                , ( 780, 665 )
                , ( 325, 665 )
                , ( 325, 190 )
                , ( 335, 160 )
                , ( 320, 160 )
                , ( 320, 40 )
                ]
            ]
            []
        ]


panel_right : Svg msg
panel_right =
    g []
        [ g []
            [ polygon
                [ points
                    [ ( 565, 120 )
                    , ( 730, 120 )
                    , ( 750, 145 )
                    , ( 750, 175 )
                    , ( 690, 175 )
                    , ( 680, 185 )
                    , ( 665, 170 )
                    , ( 615, 170 )
                    , ( 600, 185 )
                    , ( 585, 170 )
                    , ( 575, 170 )
                    ]
                ]
                []
            ]
        , g [] [ polygon [ points [ ( 680, 230 ), ( 850, 200 ), ( 875, 455 ), ( 760, 455 ) ] ] [] ]
        , g [] [ polygon [ points [ ( 760, 455 ), ( 1190, 455 ), ( 1145, 690 ), ( 790, 670 ) ] ] [] ]
        , g [] [ polygon [ points [ ( 800, 665 ), ( 1145, 690 ), ( 1035, 860 ) ] ] [] ]
        ]


panels : Svg msg
panels =
    g [ class [ "panels" ], transform [ Translate -1170 90 ] ]
        [ panel_1
        , panel_2
        , panel_3
        , panel_4
        , panel_5
        , panel_6
        , panel_7
        , panel_8
        , panel_10
        , panel_11
        , panel_12
        , panel_13
        , panel_14
        , panel_15
        , panel_16
        , panel_17
        , panel_18
        , panel_19
        , panel_20
        ]



-- 1 to 8


panel_1 : Svg msg
panel_1 =
    g [] [ polygon [ points [ ( 850, 10 ), ( 850, 110 ), ( 670, 110 ), ( 820, 20 ) ] ] [] ]


panel_2 : Svg msg
panel_2 =
    g [] [ polygon [ points [ ( 625, 110 ), ( 850, 110 ), ( 850, 255 ), ( 555, 250 ) ] ] [] ]


panel_3 : Svg msg
panel_3 =
    g [] [ polygon [ points [ ( 555, 250 ), ( 635, 255 ), ( 635, 400 ), ( 440, 400 ) ] ] [] ]


panel_4 : Svg msg
panel_4 =
    g [] [ polygon [ points [ ( 635, 255 ), ( 765, 255 ), ( 765, 400 ), ( 635, 400 ) ] ] [] ]


panel_5 : Svg msg
panel_5 =
    g [] [ polygon [ points [ ( 765, 255 ), ( 850, 255 ), ( 850, 500 ), ( 765, 495 ) ] ] [] ]


panel_6 : Svg msg
panel_6 =
    g [] [ polygon [ points [ ( 440, 400 ), ( 615, 400 ), ( 615, 490 ), ( 440, 490 ) ] ] [] ]


panel_7 : Svg msg
panel_7 =
    g [] [ polygon [ points [ ( 635, 400 ), ( 765, 400 ), ( 765, 495 ), ( 635, 490 ) ] ] [] ]


panel_8 : Svg msg
panel_8 =
    g [] [ polygon [ points [ ( 420, 490 ), ( 835, 510 ), ( 835, 590 ), ( 405, 585 ) ] ] [] ]



-- 10, 12, 14, 15, 16


panel_10 : Svg msg
panel_10 =
    g [] [ polygon [ points [ ( 1030, 30 ), ( 1170, 20 ), ( 1170, 130 ), ( 1030, 110 ) ] ] [] ]


panel_12 : Svg msg
panel_12 =
    g [] [ polygon [ points [ ( 850, 110 ), ( 1170, 130 ), ( 1155, 215 ), ( 850, 215 ) ] ] [] ]


panel_14 : Svg msg
panel_14 =
    g [] [ polygon [ points [ ( 850, 215 ), ( 1020, 215 ), ( 1020, 405 ), ( 850, 405 ) ] ] [] ]


panel_15 : Svg msg
panel_15 =
    g [] [ polygon [ points [ ( 1020, 215 ), ( 1155, 215 ), ( 1170, 420 ), ( 1020, 405 ) ] ] [] ]


panel_16 : Svg msg
panel_16 =
    g [] [ polygon [ points [ ( 850, 405 ), ( 1060, 425 ), ( 860, 590 ), ( 835, 590 ) ] ] [] ]



-- 11, 13, 19


panel_11 : Svg msg
panel_11 =
    g [] [ polygon [ points [ ( 1170, 20 ), ( 1360, 45 ), ( 1360, 115 ), ( 1170, 130 ) ] ] [] ]


panel_13 : Svg msg
panel_13 =
    g [] [ polygon [ points [ ( 1170, 130 ), ( 1480, 115 ), ( 1480, 410 ), ( 1170, 420 ) ] ] [] ]


panel_19 : Svg msg
panel_19 =
    g [] [ polygon [ points [ ( 1265, 425 ), ( 1480, 410 ), ( 1490, 595 ), ( 1465, 595 ) ] ] [] ]



-- 17, 18, 20


panel_17 : Svg msg
panel_17 =
    g [] [ polygon [ points [ ( 1480, 10 ), ( 1645, 110 ), ( 1630, 130 ), ( 1480, 115 ) ] ] [] ]


panel_18 : Svg msg
panel_18 =
    g [] [ polygon [ points [ ( 1480, 115 ), ( 1645, 110 ), ( 1890, 425 ), ( 1480, 425 ) ] ] [] ]


panel_20 : Svg msg
panel_20 =
    g [] [ polygon [ points [ ( 1480, 425 ), ( 1890, 425 ), ( 1920, 595 ), ( 1490, 595 ) ] ] [] ]


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
