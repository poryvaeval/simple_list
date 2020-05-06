import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

RowLayout {
    signal newItem(string text)
    TextField{
        id: textField
        Layout.fillWidth: true
        selectByMouse: true
        focus: true
    }
    function add()
    {
        newItem(textField.text);
        textField.clear();
    }

    Button{
        text: "Добавить"
        highlighted: true
        onClicked: {
            add();
        }
    }
    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}
