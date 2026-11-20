import Quickshell
import Quickshell.Services.UPower
import QtQuick

Text {
  readonly property var devices: UPower.devices.values
  readonly property var battery: devices.find(device => device.nativePath.endsWith("BAT1"))
  readonly property real percentage: battery ? Math.round(battery.percentage * 100) : 0
  readonly property bool isCharging: battery ? (battery.state === UPowerDeviceState.Charging) : false

  text: "Battery  -  " + percentage + "%"
  color: {
    if (isCharging) return "green"
    return "white"
  }

  font.family: Theme.fontFamily
  font.pixelSize: Theme.fontSize
}
