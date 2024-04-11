import QtQuick
import QtQuick.Window
import QtQuick.Controls

Column{
    width: parent.width;
    height: 60
    property string label

    property alias forms: forms
    property alias actions: actions
    property alias objects: objects
    property alias functions: functions

    Row{
        height: 30
        width: parent.width;
        CustomLabel{
            width: parent.width;
            height: parent.height
            labelText: label
        }
    }

    Row{
        width: parent.width;
        height: 30
        anchors.top: parent.top
        anchors.topMargin: 30
        spacing: 20



        CustomText {
            id: forms
        }

        CustomText {
            id: actions
        }

        CustomText {
            id: objects
        }

        CustomText {
            id: functions
        }



    }
}
