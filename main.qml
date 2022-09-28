import QtQuick 2.15
import QtQuick.Window 2.15
import StringContainer 1.0
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true

    StringContainer {
        id: container
    }

    Column {
        anchors.fill: parent
        spacing: 5
        Repeater {
            model: container.strings.split(',')
            Text {
                text: modelData
            }
        }

        TextField {
            id: textField
            width: parent.width
        }
        Button {
            text: "Добавить"
            onClicked: container.addString(textField.text)
        }
        Button {
            text: "Удалить последнюю строку"
            onClicked: container.removeLast()
        }
    }
}
