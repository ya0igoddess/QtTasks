import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.XmlListModel 2.15

Window {
    width: 640
    height: 480
    visible: true

    XmlListModel {
        id: dataModel
        source: "http://www.cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole {
            name: "numCode" ; query: "NumCode/string()"}
        XmlRole {
            name: "charCode" ; query: "CharCode/string()"}
        XmlRole {
            name: "nominal";query: "Nominal/string()"}
        XmlRole {
            name: "name";query: "Name/string()"}
        XmlRole {
            name: "value";query: "Value/string()"}
    }

        ListView {
            model: dataModel
            anchors.fill: parent
            delegate: Text {
                width: parent.width
                height: 20
                text: `${numCode}, ${charCode} - ${name}, ${nominal} : ${value}`
            }
        }
}
