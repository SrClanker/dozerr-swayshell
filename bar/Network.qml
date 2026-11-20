import Quickshell
import Quickshell.Networking
import QtQuick
import QtQuick.Layouts
import ".."

Text {
  id: text
  readonly property var devices: Networking.devices.values
  readonly property var device: devices.find(dev => dev.name === "wlp2s0")

  readonly property var networks: device.networks.values
  readonly property var network: networks.find(net => net.name)

  readonly property bool isConnected: device.connected ? true : false
  property string connectedNetwork: isConnected ? network.name : "Disconnected"

  text: "Network  -  " + connectedNetwork
  font.family: Theme.fontFamily
  font.pixelSize: Theme.fontSize
  color: {
    if (!connectedNetwork) return "red"
    return "white"
  }
}
