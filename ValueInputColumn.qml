import QtQuick
import QtQuick.Window
import QtQuick.Controls

Column{
    height: 30
    width: (parent.width / 4) - 15
    spacing: 5

    property string valueName;

    function setData(){
        Calculator.setValues(
                    parseFloat(num.text),
                    parseFloat(mi.text),
                    parseFloat(oi.text),
                    parseFloat(pi.text))
    }

    CustomLabel {
        labelText: valueName
        height: parent.height
        width: parent.width
    }





    InputField {
        id: num
        height: parent.height
        width: parent.width

    }
    InputField {
        id: mi
        placeholderText: qsTr("Most likely estimate")
        height: parent.height
        width: parent.width
    }
    InputField {
        id: oi
        placeholderText: qsTr("Minimum possible estimate")
        height: parent.height
        width: parent.width
    }
    InputField {
        id: pi
        placeholderText: qsTr("Pessimistic estimate")
        height: parent.height
        width: parent.width



    }





}
