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




    Grid {
        id: grid
        x: 120
        y: 35
        width: parent.width - 200
        height: parent.height - 50
        anchors.centerIn: parent

        Column{
            width: parent.width;
            height: parent.height - 250


            Row{
                spacing: 20
                width: parent.width;

                ValueInputColumn {

                    valueName: "UI Forms"
                    id: forms
                }

                ValueInputColumn {

                    valueName: "Actions"
                    id: actions
                }

                ValueInputColumn {
                    valueName: "Business objects"
                    id: businessObjects
                }

                ValueInputColumn {
                    valueName: "Business functions"
                    id: businessFunctions
                }

            }
            CustomButton{
                anchors.top: parent.top
                anchors.topMargin: 180
                name: "Calculate"
                onClicked: {

                    forms.setData()
                    laborEstimate.forms.text = Calculator.getAverageEstimate().toFixed(2)
                    squareDeviation.forms.text = Calculator.getAverageSquareDeviation().toFixed(2)


                    actions.setData()
                    laborEstimate.actions.text = Calculator.getAverageEstimate().toFixed(2)
                    squareDeviation.actions.text = Calculator.getAverageSquareDeviation().toFixed(2)


                    businessObjects.setData()
                    laborEstimate.objects.text = Calculator.getAverageEstimate().toFixed(2)
                    squareDeviation.objects.text = Calculator.getAverageSquareDeviation().toFixed(2)


                    businessFunctions.setData()
                    laborEstimate.functions.text = Calculator.getAverageEstimate().toFixed(2)
                    squareDeviation.functions.text = Calculator.getAverageSquareDeviation().toFixed(2)


                    avgLaborIntensity.text = Calculator.getAverageLaborIntensity().toFixed(0)
                    totalSquareDeviaton.text = Calculator.getTotalSquardDeviaton().toFixed(0)
                    totalLaborIntensity.text =Calculator.getTotalLaborIntensity().toFixed(0)
                    Calculator.clear()

                }

            }

            OutputRow {
                id: laborEstimate
                label : "Average labor estimate"
                anchors.top: parent.top
                anchors.topMargin: 220

            }

            OutputRow {
                id: squareDeviation
                label : "Average square deviation"
                anchors.top: parent.top
                anchors.topMargin: 280
            }

            Column{
                anchors.top: parent.top
                anchors.topMargin: 350
                height: 100
                width: parent.width;
                spacing: 5


                OutputValue {
                    id: avgLaborIntensity
                    label : "Average labor intesity"

                }

                OutputValue {
                    id: totalSquareDeviaton
                    label : "Total square deviaton"

                }
                OutputValue {
                    id: totalLaborIntensity
                    label : "Total labor intesity"
                }

            }


        }




    }




}
