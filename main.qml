import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true

    Column {
     anchors.fill: parent

     Repeater {
         model: ListModel {
             ListElement {text: "red" ; textColor: "white"}
             ListElement {text: "green" ; textColor: "black"}
             ListElement {text: "blue" ; textColor: "white"}
          }
         delegate: Rectangle {
            width: 200
            height: 16
            color: model.text
            Text {
                anchors.centerIn: parent
                text: model.text
                color: model.textColor
            }
         }
     }
    }
}
