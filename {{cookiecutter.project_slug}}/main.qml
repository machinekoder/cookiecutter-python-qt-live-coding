import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import {{cookiecutter.module_name}} 1.0

ApplicationWindow {
  visible: true
  width: 640
  height: 480
  title: qsTr("{{cookiecutter.project_name}}")

  MainPanel {
    anchors.fill: parent
  }
}
