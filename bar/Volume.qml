import Quickshell
import Quickshell.Services.Pipewire
import QtQuick

Text {
  readonly property PwNode sink: Pipewire.defaultAudioSink

  PwObjectTracker {
    objects: sink
  }

  text: {
    if (!sink) return "0%";
    if (sink.audio.muted) return "Volume  -  Muted";
    return "Volume  -  " + Math.round(sink.audio.volume * 100) + "%";
  }

  font.family: Theme.fontFamily
  font.pixelSize: Theme.fontSize
  color: {
    if (sink.audio.muted) return "red"
    return "white"
  }
}
