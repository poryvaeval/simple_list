import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Контакты")
    ListModel{
        id: contactsModel
        ListElement{
            name: "Vasiliu"
        }
        ListElement{
            name: "Vasilriu"
        }
        ListElement{
            name: "Vasilriu"
        }
    }
    ColumnLayout{
        anchors.fill: parent
        MainToolBar{
             Layout.fillWidth: true
             onNewItem: {
                 contactsModel.append({name: name});
             }
        }
        ContactList{
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
        }

    }

    ContactList{
        model: contactsModel
    }
}
