import QtQuick
import QtQuick.Window
import QtQuick.Controls

Row{
    id: root
    width: parent.width;
    height: 30
    spacing: 5

    property string label
    property string text

    CustomLabel{
        width: parent.width / 2 - 2.5;
        height: parent.height;
        labelText: label
    }
    CustomText{
        width: parent.width / 2 - 2.5;
        height: parent.height;
        text: root.text
    }


}
