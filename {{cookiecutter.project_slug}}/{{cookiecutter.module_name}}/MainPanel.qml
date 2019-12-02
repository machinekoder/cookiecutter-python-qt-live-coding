import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import {{cookiecutter.module_name}} 1.0

Item {
  id: root

  Row {
    anchors.centerIn: parent

    TextField {
      id: aEdit
      text: "0"
      validator: DoubleValidator {
      }
    }

    Label {
      anchors.verticalCenter: parent.verticalCenter
      text: "+"
    }

    TextField {
      id: bEdit
      text: "1"
      validator: DoubleValidator {
      }
    }

    Label {
      id: sumLabel
      anchors.verticalCenter: parent.verticalCenter
      text: " = " + calculator.sum
    }
  }

  Calculator {
    id: calculator
    a: Number(aEdit.text)
    b: Number(bEdit.text)
  }
}
