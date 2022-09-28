import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480

    Rectangle {
        id: redSquare
        width: 200
        height: 200
        color: "red"
    }
    Rectangle {
        id: greenSquare
        width: 200
        height: 200
        color: "green"
        anchors {
            left: redSquare.right
            top: redSquare.verticalCenter
        }
    }
    Rectangle{
        id: blueSquare
        width: 200
        height: 200
        color: "blue"
        anchors {
            left: greenSquare.horizontalCenter
            bottom: greenSquare.verticalCenter
        }
        Text {
            id: blueSquareText
            color: "white"
            text: qsTr("Квадрат")
            anchors.centerIn: blueSquare
        }
    }
}
