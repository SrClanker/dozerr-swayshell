import Quickshell
import QtQuick
import ".."

Text {
  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }

  text: Qt.formatDateTime(clock.date, "h:mm AP")
  color: "white"
  anchors.centerIn: parent
  font.family: Theme.fontFamily
  font.pixelSize: Theme.fontSize
}
