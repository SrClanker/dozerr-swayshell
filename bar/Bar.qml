import Quickshell
import QtQuick
import QtQuick.Layouts

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData
      implicitHeight: 50
      color: Theme.colorBase

      anchors {
        top: true
        left: true
        right: true
      }

      RowLayout {
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 20
        spacing: 10

        Workspaces {}

        Item { Layout.fillWidth: true }

        Volume {
          Layout.rightMargin: 10
          Layout.leftMargin: 10
        }

        Rectangle {
          implicitWidth: 1
          implicitHeight: 25
          color: "#3d3d3d"
        }

        Network {
          Layout.rightMargin: 10
          Layout.leftMargin: 10
        }

        Rectangle {
          implicitWidth: 1
          implicitHeight: 25
          color: "#3d3d3d"
        }

        Battery {
          Layout.rightMargin: 10
          Layout.leftMargin: 10
        }
      }

      Clock {}
    }
  }
}
