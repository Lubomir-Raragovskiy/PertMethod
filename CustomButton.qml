import QtQuick
import QtQuick.Window
import QtQuick.Controls

Button{

    property string name

    flat: true
    width: parent.width
    height: 30
    background: Rectangle{
        color: root.down ? "#846A6A" :  (root.hovered ? "#EEF0F2" : "#846A6A")
        anchors.fill: parent;
        radius: 10
    }
    contentItem : Text {
        color: "#353b3c"
        anchors.fill: parent;
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 13
        anchors.centerIn: parent.Center
        text: name


    }



}
