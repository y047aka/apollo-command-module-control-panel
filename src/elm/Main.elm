module Main exposing (main)

import Browser
import Html exposing (img)
import Html.Attributes exposing (id, src)
import TypedSvg exposing (circle, defs, g, line, polygon, rect, svg, symbol, use)
import TypedSvg.Attributes exposing (class, points, string, transform, viewBox, xlinkHref)
import TypedSvg.Attributes.InPx exposing (cx, cy, height, r, width, x, x1, x2, y, y1, y2)
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
        [ symbol [ id "screw_4", class [ "screw" ] ]
            [ circle [ cx 4, cy 4, r 4 ] []
            , line [ x1 4, y1 2, x2 4, y2 6 ] []
            , line [ x1 2, y1 4, x2 6, y2 4 ] []
            ]
        , symbol [ id "screw_2", class [ "screw" ] ]
            [ circle [ cx 3, cy 3, r 3 ] []
            , line [ x1 3, y1 1.5, x2 3, y2 4.5 ] []
            , line [ x1 1.5, y1 3, x2 4.5, y2 3 ] []
            ]
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
        , g [] [ panel_1_screws ]
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
        , panel_7_screws
        ]


panel_8 : Svg msg
panel_8 =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_5_base ]
        , g [] [ panel_8_screws ]
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


panel_1_screws : Svg msg
panel_1_screws =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_1_and_3_screws ]
        , g []
            ([ ( -608, 319 )
             , ( -642, 343 )
             , ( -608, 365 )
             , ( -557, 377 )
             , ( -685, 397 )
             , ( -550, 423 )
             , ( -733, 462 )
             , ( -662, 458 )
             , ( -595, 458 )
             , ( -527, 447 )
             , ( -428, 457 )
             , ( -721, 503 )
             , ( -646, 503 )
             , ( -566, 502 )
             , ( -747, 544 )
             , ( -669, 543 )
             , ( -655, 565 )
             , ( -582, 557 )
             , ( -497, 557 )
             , ( -427, 557 )
             , ( -351, 571 )
             , ( -475, 597 )
             , ( -655, 649 )
             , ( -606, 649 )
             , ( -521, 648 )
             , ( -437, 648 )
             , ( -351, 648 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
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
        , g []
            ([ ( -184, 130 )
             , ( -184, 168 )
             , ( -19, 168 )
             , ( 103, 168 )
             , ( 167, 154 )
             , ( 216, 168 )
             , ( 266, 168 )
             , ( 315, 168 )
             , ( -128, 203 )
             , ( -43, 203 )
             , ( 102, 210 )
             , ( 150, 210 )
             , ( 102, 255 )
             , ( 258, 259 )
             , ( 315, 259 )
             , ( -185, 296 )
             , ( -70, 306 )
             , ( 3, 296 )
             , ( 46, 296 )
             , ( 102, 296 )
             , ( 165, 296 )
             , ( 229, 296 )
             , ( 315, 295 )
             , ( -174, 334 )
             , ( -70, 340 )
             , ( -10, 341 )
             , ( 52, 353 )
             , ( -70, 365 )
             , ( 93, 364 )
             , ( 205, 361 )
             , ( -174, 390 )
             , ( -70, 399 )
             , ( -10, 399 )
             , ( 20, 409 )
             , ( 107, 409 )
             , ( 216, 399 )
             , ( 248, 399 )
             , ( 315, 416 )
             , ( -70, 423 )
             , ( -174, 465 )
             , ( -98, 465 )
             , ( -23, 465 )
             , ( 52, 465 )
             , ( 127, 465 )
             , ( 211, 467 )
             , ( 315, 452 )
             , ( -323, 470 )
             , ( -265, 470 )
             , ( -193, 470 )
             , ( -332, 503 )
             , ( -281, 547 )
             , ( -202, 540 )
             , ( -332, 560 )
             , ( -243, 579 )
             , ( -323, 595 )
             , ( -284, 618 )
             , ( 162, 476 )
             , ( 162, 499 )
             , ( 210, 499 )
             , ( 317, 508 )
             , ( 180, 523 )
             , ( 317, 551 )
             , ( 220, 562 )
             , ( 261, 601 )
             , ( 317, 601 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        ]


panel_3_screws : Svg msg
panel_3_screws =
    g []
        [ panel_1_and_3_screws
        , g []
            ([ ( 348, 119 )
             , ( 413, 119 )
             , ( 453, 147 )
             , ( 348, 174 )
             , ( 422, 176 )
             , ( 503, 188 )
             , ( 357, 262 )
             , ( 398, 262 )
             , ( 446, 262 )
             , ( 521, 258 )
             , ( 578, 287 )
             , ( 362, 318 )
             , ( 438, 319 )
             , ( 515, 307 )
             , ( 450, 352 )
             , ( 504, 353 )
             , ( 581, 342 )
             , ( 514, 379 )
             , ( 449, 400 )
             , ( 523, 412 )
             , ( 580, 398 )
             , ( 449, 443 )
             , ( 514, 444 )
             , ( 664, 445 )
             , ( 698, 424 )
             , ( 403, 460 )
             , ( 503, 472 )
             , ( 575, 462 )
             , ( 722, 461 )
             , ( 348, 503 )
             , ( 448, 504 )
             , ( 520, 504 )
             , ( 733, 500 )
             , ( 564, 517 )
             , ( 604, 517 )
             , ( 697, 518 )
             , ( 347, 547 )
             , ( 451, 548 )
             , ( 498, 549 )
             , ( 564, 550 )
             , ( 604, 556 )
             , ( 679, 556 )
             , ( 743, 559 )
             , ( 344, 591 )
             , ( 394, 580 )
             , ( 456, 593 )
             , ( 518, 594 )
             , ( 582, 594 )
             , ( 646, 601 )
             , ( 343, 640 )
             , ( 418, 640 )
             , ( 491, 641 )
             , ( 544, 642 )
             , ( 595, 642 )
             , ( 644, 642 )
             , ( 745, 635 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        ]


panel_4_screws : Svg msg
panel_4_screws =
    g []
        [ panel_4_and_7_screws
        , g []
            ([ ( 1048, 706 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_4", x dx, y dy ] [])
            )
        , g []
            ([ ( 1030, 764 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        , g []
            ([ ( 819, 670 )
             , ( 863, 673 )
             , ( 857, 701 )
             , ( 881, 696 )
             , ( 1128, 694 )
             , ( 1091, 712 )
             , ( 1080, 729 )
             , ( 1100, 735 )
             , ( 1078, 767 )
             , ( 1057, 798 )
             , ( 1036, 829 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        ]


panel_5_screws : Svg msg
panel_5_screws =
    g []
        [ g [] [ panel_5_and_8_screws ]
        , g []
            ([ ( 795, 520 )
             , ( 836, 520 )
             , ( 796, 561 )
             , ( 836, 561 )
             , ( 845, 523 )
             , ( 852, 525 )
             , ( 883, 525 )
             , ( 852, 556 )
             , ( 883, 556 )
             , ( 942, 527 )
             , ( 1002, 516 )
             , ( 1055, 527 )
             , ( 1110, 544 )
             , ( 841, 587 )
             , ( 908, 587 )
             , ( 1009, 575 )
             , ( 1080, 595 )
             , ( 818, 641 )
             , ( 881, 631 )
             , ( 948, 631 )
             , ( 1017, 623 )
             , ( 1080, 639 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        , g []
            ([ ( 995, 655 )
             , ( 1062, 650 )
             , ( 1102, 650 )
             , ( 1067, 676 )
             , ( 1102, 679 )
             , ( 1126, 677 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
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


panel_7_screws : Svg msg
panel_7_screws =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_4_and_7_screws ]
        , g []
            ([ ( -870, 673 )
             , ( -864, 699 )
             , ( -1067, 794 )
             , ( -1087, 764 )
             , ( -1108, 732 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_4", x dx, y dy ] [])
            )
        , g []
            ([ ( -1026, 750 )
             , ( -1021, 733 )
             , ( -998, 729 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        , g []
            ([ ( -819, 670 )
             , ( -1128, 694 )
             , ( -1036, 829 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        ]


panel_8_screws : Svg msg
panel_8_screws =
    g []
        [ g [ transform [ Scale -1 1 ] ] [ panel_5_and_8_screws ]
        , g [] [ use [ xlinkHref "#screw_4", x -783, y 542 ] [] ]
        , g []
            ([ ( -1086, 517 )
             , ( -882, 518 )
             , ( -1094, 550 )
             , ( -1001, 565 )
             , ( -939, 575 )
             , ( -867, 568 )
             , ( -1024, 614 )
             , ( -867, 612 )
             , ( -1026, 652 )
             , ( -899, 652 )
             , ( -825, 652 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_2", x dx, y dy ] [])
            )
        ]


panel_1_and_3_screws : Svg msg
panel_1_and_3_screws =
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


panel_4_and_7_screws : Svg msg
panel_4_and_7_screws =
    g []
        [ g []
            ([ ( 906, 679 )
             , ( 950, 683 )
             , ( 994, 685 )
             , ( 1038, 689 )
             , ( 1082, 692 )
             , ( 993, 811 )
             , ( 958, 783 )
             , ( 925, 755 )
             , ( 891, 726 )
             ]
                |> List.map (\( dx, dy ) -> use [ xlinkHref "#screw_4", x dx, y dy ] [])
            )
        ]


panel_5_and_8_screws : Svg msg
panel_5_and_8_screws =
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
