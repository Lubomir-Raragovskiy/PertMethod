import QtQuick
import QtQuick.Window
import QtQuick.Controls

Rectangle {
    property string labelText;
    id: rectangle

    color: "#A2999E"
    Text {
        text: labelText
        color: "#353B3C"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

    }
}
