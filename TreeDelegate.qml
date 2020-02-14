import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    //color: ( styleData.row % 2 == 0 ) ? "white" : "lightblue"
    //height: 100

    Text {
        elide: styleData.elideMode
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        text: styleData.value
    }

}

