import QtQuick
import QtQuick.Window
import QtQuick.Controls

TextField {
    id: textField
    width: 111
    height: 27
    color: "#353B3C"
    placeholderText: qsTr("Input number")
    validator: RegularExpressionValidator { regularExpression: /[0-9A-F]+/ }
    background: Rectangle{
        color: "#EEF0F2"
    }
}
