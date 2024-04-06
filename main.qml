import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    id : root
    visible: true
    width: 640
    height: 480
    title: "PertMethod"
    color: "#C6C7C4"

    signal calculate();
    function getData(){

        return [
        UIForms.getValues(),
        actions.getValues(),
        businessObjects.getValues(),
        businessFunctions.getValues(),
        ]
    }



    Grid {
        id: grid
        x: 120
        y: 35
        width: parent.width - 200
        height: parent.height - 200
        anchors.centerIn: parent

        Column{
            anchors.fill: parent;
            spacing: 20

            ValueInputRow {
                valueName: "UI Forms"
                valueId: UIForms
            }

            ValueInputRow {
                valueName: "Actions"
                valueId: actions
            }

            ValueInputRow {
                valueName: "Business objects"
                valueId: businessObjects
            }

            ValueInputRow {
                valueName: "Business functions"
                valueId: businessFunctions
            }

            CustomButton {
                name : "Calculate"
                onClicked: calculate()
            }
        }

    }


}
