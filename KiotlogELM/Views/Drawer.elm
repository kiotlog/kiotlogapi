module Views.Drawer exposing (view)

import Html exposing (..)
import Html.Attributes exposing (id, class, href, attribute)
import Types exposing (Msg)


view : a -> Html Msg
view model =
    aside [ id "kiotlog-actions-menu", class "mdc-drawer mdc-drawer--temporary mdc-typography", attribute "data-mdc-auto-init" "MDCTemporaryDrawer" ]
        [ nav [ class "mdc-drawer__drawer" ]
            [ header [ class "mdc-drawer__header" ]
                [ div [ class "mdc-drawer__header-content" ]
                    [ text "Header" ]
                ]
            , div [ class "mdc-drawer__content mdc-list-group" ]
                [ nav [ class "mdc-list" ]
                    [ a [ class "mdc-list-item", href "#/" ]
                        [ i [ class "material-icons mdc-list-item__graphic" ]
                            [ text "dashboard" ]
                        , text "Dashboard"
                        ]
                    , a [ class "mdc-list-item", href "#/devices" ]
                        [ i [ class "material-icons mdc-list-item__graphic" ]
                            [ text "device_hub" ]
                        , text "Devices"
                        ]
                    , a [ class "mdc-list-item", href "#/sensors" ]
                        [ i [ class "material-icons mdc-list-item__graphic" ]
                            [ text "memory" ]
                        , text "Sensors"
                        ]
                    ]
                , hr [ class "mdc-list-divider" ] []
                , nav [ class "mdc-list" ]
                    [ a [ class "mdc-list-item", href "/boh" ]
                        [ i [ class "material-icons mdc-list-item__graphic" ]
                            [ text "boh" ]
                        ]
                    , text "boh"
                    ]
                ]
            ]
        ]