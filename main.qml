import QtQuick 2.15
import QtQuick.Window 2.15



Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

   Column {
    WorkerScript {
            id: workerScript
            source: "./FibWorker.js"
            onMessage: { loadedCounter.text++; resultText.text += messageObject + '\n'; }
        }

        Row {
            Text {
               text: "Loaded: "
            }
            Text {
                id: loadedCounter
                text: "1"
            }
        }

        Text {
            id: resultText
            text: ""
            onTextChanged: workerScript.sendMessage(loadedCounter.text)
        }

        Component.onCompleted: workerScript.sendMessage(0)
}
}
