import QtQuick 1.0
import Qt.labs.shaders 1.0

Rectangle {
    width: 360
    height: 360

    GradientItem {
        color0: "yellow"
        stop0: 0.2
        color1: "red"
        stop1: 0.5
        anchors.fill: parent
    }
}
