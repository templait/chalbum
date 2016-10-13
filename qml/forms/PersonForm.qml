import QtQuick 2.0
import "../components"

Item {
	property string title: qsTr("Персона")

	width: 300
	height: 200
	Row {
		LineEdit {
			placeholderText: qsTr("Имя")
		}
	}
}
