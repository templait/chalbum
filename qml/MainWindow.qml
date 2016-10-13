import QtQuick 2.5
import QtQuick.Controls 1.4
import "./components"
import "./forms"
import "."

ApplicationWindow {
	Component {
		id: person
		PersonForm{}
	}
	width: 800
	height: 600
	Column {
		LineEdit {
			placeholderText: "Type some text here"
		}
		FloatingButton
		{
			onClicked: ShowDialog.open(person)
		}
	}


	ActionController {
		id: actionController
		path: Settings.baseURL + "/people"
	}

	Component.onCompleted: {
		actionController.index()
	}

	DialogContainer {
		anchors.fill: parent
		visible: ShowDialog.show
	}
}
