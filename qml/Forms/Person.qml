import QtQuick 2.0
import ".."
import "../Components"

Item {
	property string title: qsTr("Персона")
	property var person: JSON.parse('{}')

	width: 300
	height: 200
	Row {
		LineEdit {
			id: leName
			placeholderText: qsTr("Имя")
		}
		RaisedButton {
			content: Rectangle {width: 100; height: 50; color: "red"}
			onClicked: {console.log(person.name)}
		}
	}
	Binder {source: leName; sourceProperty: "text"; target: person; targetProperty: "name"}
}
