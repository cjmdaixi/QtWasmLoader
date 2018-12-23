import QtQuick 2.9
import QtQuick.Controls 2.4
//import "."

Rectangle {
    id: root
    color: "#2c2b30"
    
    Label{
        id: label
        anchors.centerIn: parent
        text: "\u4f60\u597d\u6211\u4eec"
        color: "white"
    }

    DarkSwitch{
        id: darkSwitch
        anchors{
            horizontalCenter: label.horizontalCenter
            top: label.bottom
            topMargin: 10
        }
    }
}
