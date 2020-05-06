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
            name: "Анна"
            avatar: "icons/icon1.png"
        }
        ListElement{
            name: "Анна"
            avatar: "icons/icon2.png"
        }
    }
    ColumnLayout{
        anchors.fill: parent
        MainToolBar{
             Layout.fillWidth: true
             onNewItem: {
                 contactsModel.append({name: text});
             }
        }
        ContactList{
            id: list
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
            onMenu: {
                contactListMenu.popup();
            }
        }

    }
    Menu {
        id: contactListMenu
        modal: true
        MenuItem {
            text: "Удалить"
            onTriggered: {
                contactsModel.remove(list.menuIndex);
            }
        }

    }

}
