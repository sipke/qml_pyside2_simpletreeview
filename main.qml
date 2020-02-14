import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.2
import QtQml.Models 2.2
import QtQuick.Layouts 1.3

Item {
    id: container
    width: 300
    ItemSelectionModel {
        id: sel
        model: theModel
        onSelectionChanged: {
            console.log("selected", selected)
            console.log("deselected", deselected)
        }
        onCurrentChanged: console.log("current", current)
    }
    TreeView {
        sortIndicatorVisible: true
        backgroundVisible: false
        anchors.fill: parent
        model: theModel
        selectionMode: SelectionMode.MultiSelection
        selection: sel

        itemDelegate: TreeDelegate {}

        TableViewColumn {
            role: "title"
            title: "Title"
        }

        TableViewColumn {
            role: "summary"
            title: "Summary"
        }

    }
}


