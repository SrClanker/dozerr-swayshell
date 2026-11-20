import Quickshell
import Quickshell.I3
import QtQuick
import ".."

Repeater {
  model: I3.workspaces

  Text {
    required property var modelData
    text: "  " + modelData.number + "  "

    color: {
      if (modelData.focused) return "white"
      return "gray"
    }

    font.family: Theme.fontFamily
    font.pixelSize: Theme.fontSize
  }
}
