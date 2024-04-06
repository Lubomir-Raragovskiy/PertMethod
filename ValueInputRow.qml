import QtQuick
import QtQuick.Window
import QtQuick.Controls

Row{
    height: 30
    width: parent.width
    spacing: 5

    property string valueName;

    property string valueId



    Rectangle {
        id: rectangle
        height: parent.height
        width: parent.width / 3 - 5
        color: "#A2999E"
        Text {
            text: valueName
            color: "#353B3C"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }
    }

    Row{
        id: valueId
        height: parent.height
        width: 2 * parent.width / 3 - 15
        spacing: 5
        function getValues() {
        return [num.text, mi.text, oi.text, pi.text]
        }

        InputField {
            id: num
            height: parent.height
            width: parent.width / 4

        }
        InputField {
            id: mi
            placeholderText: qsTr("Most likely labor costs")
            height: parent.height
            width: parent.width / 4
        }
        InputField {
            id: oi
            placeholderText: qsTr("Minimum possible labor costs")
            height: parent.height
            width: parent.width / 4
        }
        InputField {
            id: pi
            placeholderText: qsTr("Pessimistic estimate of labor costs")
            height: parent.height
            width: parent.width / 4

        }

    }





}
