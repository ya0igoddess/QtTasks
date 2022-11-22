import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
   StackView {
    ListView {
            id: task1_LV
            height: parent.height/2
            width: parent.width
            model: {}
            delegate: Text {
                text: `Задача: ${modelData.title}, ${modelData.completed ? 'Выполнена':'Не выполнена'}`
            }
            function request() {
                var xhr= new XMLHttpRequest();
                xhr.responseType = 'json';
                var url = 'https://jsonplaceholder.typicode.com/todos';

                xhr.onreadystatechange = function() {
                    if (xhr.readyState === XMLHttpRequest.HEADERS_RECIEVED) {
                       print('HEADERS RECIEVED');
                    } else if (xhr.readyState === XMLHttpRequest.DONE) {
                        var json = JSON.parse(xhr.responseText.toString());
                        print(json)
                        task1_LV.model = json;
                    }
                }
                xhr.open('GET', url);
                xhr.send();
            }
            Component.onCompleted: request()
        }
        MenuSeparator {}
        Label {
            id: task2Label
            height: 20
        }
        Label { text: 'Login' ; height: 30}
        TextField { id: loginField }
        Label {text:'Password'}
        TextField { id: passField }
    }


}
