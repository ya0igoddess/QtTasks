import QtQuick 2.15
import QtQuick.Window 2.15
import SimpleCounter 1.0
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true

    SimpleCounter {
        id: counter
    }

    Column {
        anchors.fill: parent
        Text {
            width: parent.width
            text: counter.counter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button {
            text: "++"
            onClicked: counter.increment()
        }
        Button {
            text: "0"
            onClicked: counter.toZero()
        }
    }
}
