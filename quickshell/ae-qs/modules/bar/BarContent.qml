import qs.widgets
import qs.settings
import qs.modules.bar.widgets
import QtQuick
import QtQuick.Layouts

Item {

    property bool isHorizontal: Shell.flags.bar.position === "top" || Shell.flags.bar.position === "bottom"
    // I'm too lazy to modify all modules sooo.... I will fix it later but not right now.

    Row {
        id: leftRow
        visible: isHorizontal
        anchors.left: parent.left
        anchors.leftMargin: Shell.flags.bar.density * 0.3
        anchors.verticalCenter: parent.verticalCenter
        spacing: 16

        Glyph{}
        ActiveTopLevel{}
    }

    Row {
        id: centerRow
        anchors.centerIn: parent
        spacing: 4
        rotation: (Shell.flags.bar.position === "left" || Shell.flags.bar.position === "right") ? 90 : 0

        //SystemUsage{}
        Media{}
        Workspaces{}
        Clock{}
        Utilities{}
        Battery{}
    }

    RowLayout {
        id: rightRow
        visible: isHorizontal
        anchors.right: parent.right
        anchors.rightMargin: Shell.flags.bar.density * 0.3
        anchors.verticalCenter: parent.verticalCenter
        spacing: 4

        SystemTray{}
        BluetoothWifi{}
    }


    RControl {}
    LControl {}
}
