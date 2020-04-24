import QtQuick 2.13
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.13

Rectangle {
    id: me
    property alias icon: icon.source
    property alias text: label.text
    width: parent.width
    height: 60

    RowLayout{
        anchors.fill: parent
        spacing: 7
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        Image{
            id: icon
            source: "icons/icon.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 7
        }
        Label{
            id: label
            Layout.fillWidth: true
            font.bold: true
        }
    }
}
