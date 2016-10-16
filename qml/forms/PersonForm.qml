import QtQuick 2.0
import "../components"

Item {
	property string title: qsTr("Персона")
	property var person: JSON.parse('{"name":"Aly"}')

	Binding {target: person; property: "name"; value: 'ffff'}

	width: 300
	height: 200
	Row {
		LineEdit {
			id: ffff
			placeholderText: qsTr("Имя")
			//text: person.name
		}
		Text {
			text: person.name
		}
	}

	Component.onCompleted: {
		console.log(person.name)
	}
}
