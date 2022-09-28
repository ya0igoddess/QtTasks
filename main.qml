import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true

    ListModel { id: dataModel }
    Column {
        spacing: 5
        width: 200
        height: parent.height
        ListView {
            width: parent.width
            height: parent.height - addButton.height
            model: dataModel
            delegate: Rectangle {
                height: 30
                width:  parent.width
                border.color: "black"
                Text {
                    anchors.centerIn: parent
                    text: model.number
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: dataModel.remove(model)
                }
            }
        }

       Rectangle {
           id: addButton
           color: "gray"
           height: 30
           width: parent.width
           Text {
               anchors.centerIn: parent
               text: "Добавить элемент"
           }
           MouseArea {
               anchors.fill: parent
               onClicked: dataModel.append({number: dataModel.count + 1})
           }
       }
    }
}
