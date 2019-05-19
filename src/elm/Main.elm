module Main exposing (main)

import Browser
import Html exposing (img)
import Html.Attributes exposing (id, src)
import TypedSvg exposing (circle, defs, g, polygon, rect, svg, symbol, use)
import TypedSvg.Attributes exposing (class, points, string, transform, viewBox, xlinkHref)
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
            [ definitions
            , panels
            ]
        ]
    }


definitions : Svg msg
definitions =
    defs []
        [ symbol [ id "screw_4" ] [ circle [ cx 4, cy 4, r 4 ] [] ]
        , symbol [ id "hole_4" ] [ circle [ cx 4, cy 4, r 4 ] [] ]
        ]


panels : Svg msg
panels =
    g [ class [ "panels" ] ]
        [ g
            []
            [ panel_1
            , panel_2
            , panel_3
            ]
        , g []
            [ panel_4
            , panel_5
            , panel_6
            ]
        , g []
            [ panel_7
            , panel_8
            , panel_9
            ]
        ]


panel_1 : Svg msg
panel_1 =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_3_base ]
        , g [ transform [ Scale -1 1 ] ] [ panel_3_screws ]
        ]


panel_2 : Svg msg
panel_2 =
    g []
        [ panel_2_base
        , panel_2_screws
        ]


panel_3 : Svg msg
panel_3 =
    g []
        [ panel_3_base
        , panel_3_screws
        ]


panel_4 : Svg msg
panel_4 =
    g []
        [ panel_4_base
        , panel_4_screws
        ]


panel_5 : Svg msg
panel_5 =
    g []
        [ panel_5_base
        , panel_5_screws
        ]


panel_6 : Svg msg
panel_6 =
    g []
        [ panel_6_base
        , panel_6_screws
        ]


panel_7 : Svg msg
panel_7 =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_4_base ]
        , g [ transform [ Scale -1 1 ] ] [ panel_4_screws ]
        ]


panel_8 : Svg msg
panel_8 =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_5_base ]
        , g [ transform [ Scale -1 1 ] ] [ panel_5_screws ]
        ]


panel_9 : Svg msg
panel_9 =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_6_base ]
        , g [ transform [ Scale -1 1 ] ] [ panel_6_screws ]
        ]


panel_2_base : Svg msg
panel_2_base =
    let
        right =
            g [ class [ "panel" ] ]
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
    in
    g []
        [ right
        , g [ transform [ Scale -1 1 ] ] [ right ]
        ]


panel_3_base : Svg msg
panel_3_base =
    polygon
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


panel_4_base : Svg msg
panel_4_base =
    g []
        [ polygon [ points [ ( 800, 665 ), ( 1145, 690 ), ( 1035, 860 ) ] ] []
        ]


panel_5_base : Svg msg
panel_5_base =
    g []
        [ polygon [ points [ ( 760, 455 ), ( 1190, 455 ), ( 1145, 690 ), ( 790, 670 ) ] ] []
        ]


panel_6_base : Svg msg
panel_6_base =
    g []
        [ polygon [ points [ ( 680, 230 ), ( 850, 200 ), ( 875, 455 ), ( 760, 455 ) ] ] []
        ]


panel_2_screws : Svg msg
panel_2_screws =
    let
        screws =
            [ ( 188, 116 )
            , ( 331, 169 )
            , ( 331, 228 )
            , ( 331, 284 )
            , ( 331, 341 )
            , ( 331, 398 )
            , ( 331, 455 )
            , ( 331, 511 )
            , ( 331, 567 )
            , ( 331, 623 )
            , ( 298, 654 )
            , ( 258, 615 )
            , ( 217, 575 )
            , ( 177, 536 )
            , ( 137, 497 )
            , ( 81, 477 )
            , ( 24, 477 )
            ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#hole_4", x dx, y dy ] [])
    in
    g []
        [ g [] screws
        , g [ transform [ Scale -1 1 ] ] screws
        ]


panel_3_screws : Svg msg
panel_3_screws =
    g []
        ([ ( 555, 190 )
         , ( 589, 279 )
         , ( 630, 330 )
         , ( 672, 382 )
         , ( 713, 434 )
         , ( 733, 473 )
         , ( 742, 529 )
         , ( 752, 585 )
         , ( 760, 641 )
         , ( 723, 654 )
         , ( 667, 654 )
         , ( 611, 654 )
         , ( 554, 653 )
         , ( 498, 653 )
         , ( 441, 653 )
         , ( 385, 653 )
         , ( 331, 651 )
         , ( 331, 594 )
         , ( 331, 538 )
         , ( 331, 482 )
         , ( 331, 425 )
         , ( 331, 368 )
         , ( 331, 312 )
         , ( 331, 257 )
         , ( 331, 199 )
         , ( 331, 143 )
         ]
            |> List.map (\( dx, dy ) -> use [ xlinkHref "#hole_4", x dx, y dy ] [])
        )


panel_4_screws : Svg msg
panel_4_screws =
    g []
        [ g []
            ([ ( 906, 679 )
             , ( 950, 683 )
             , ( 994, 685 )
             , ( 1038, 689 )
             , ( 1048, 706 )
             , ( 1082, 692 )
             , ( 993, 811 )
             , ( 958, 783 )
             , ( 925, 755 )
             , ( 891, 726 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_4", x dx, y dy ] [])
            )
        ]


panel_5_screws : Svg msg
panel_5_screws =
    g []
        [ g []
            ([ ( 767, 462 )
             , ( 809, 462 )
             , ( 854, 462 )
             , ( 899, 462 )
             , ( 944, 462 )
             , ( 989, 462 )
             , ( 1034, 462 )
             , ( 1080, 462 )
             , ( 1125, 462 )
             , ( 1171, 462 )
             , ( 1168, 504 )
             , ( 1159, 547 )
             , ( 1150, 591 )
             , ( 1141, 633 )
             , ( 788, 625 )
             , ( 783, 584 )
             , ( 773, 502 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_4", x dx, y dy ] [])
            )
        ]


panel_6_screws : Svg msg
panel_6_screws =
    g []
        [ g []
            ([ ( 686, 235 )
             , ( 726, 227 )
             , ( 767, 219 )
             , ( 808, 211 )
             , ( 842, 235 )
             , ( 846, 281 )
             , ( 850, 326 )
             , ( 853, 371 )
             , ( 857, 417 )
             , ( 834, 440 )
             , ( 797, 441 )
             , ( 762, 441 )
             , ( 751, 409 )
             , ( 735, 366 )
             , ( 718, 321 )
             , ( 702, 278 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_4", x dx, y dy ] [])
            )
        ]


panel_right : Svg msg
panel_right =
    g []
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
