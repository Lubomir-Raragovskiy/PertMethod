import QtQuick
import QtQuick.Window
import QtQuick.Controls


Rectangle{
    id: root
    property string text

    width: parent.width / 4 - 15
    height: parent.height
    color: "#EEF0F2"

    Text{
        anchors.fill: parent
        text: root.text
        color: "#353B3C"


    }

}
