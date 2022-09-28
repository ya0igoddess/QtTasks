import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true

    Rectangle {
     id: rect
     width: 300; height: 300
     color: "black"
     anchors.centerIn: parent
     ParallelAnimation {
     running: true
     RotationAnimation {
         duration: 500
         target: rect
         to: 45
     }
     PropertyAnimation {
         duration: 500
         target: rect
         property: "width"
         to: rect.width / 2
     }

//     NumberAnimation { target: rect; property: "y";
//     to: 50; duration: 1000 }
//
    }
   }

}
