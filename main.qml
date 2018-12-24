import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    font{
        family: chineseFont.name
    }

    FontLoader{
        id: chineseFont
        source: "qrc:/fonts/Simplified-Chinese3500.otf"
    }

    Item{
        id: loadingItem
        anchors.fill: parent
        AnimatedImage{
            id: loadingGif
            source: "qrc:/loading.gif"
            anchors.centerIn: parent
            width: 400
            height: 400
        }
        Label {
            id: loadingText
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: loadingGif.bottom
                bottomMargin: 30

            }
            font.pointSize: 20
            text: qsTr("加载中...")
        }

    }


    Loader{
        id: mainView
        anchors.fill: parent
        source: "https://jimmychen.space/QtWasmLoader/UI/MainView.qml"
        onLoaded: {
            loadingItem.visible = false;
        }
    }
}
