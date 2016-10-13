import QtQuick 2.5
import QtQuick.Controls 1.4
import "./components"
import "."

ApplicationWindow {
	width: 800
	height: 600
	Column {
		LineEdit {
			placeholderText: "Type some text here"
		}
		FloatingButton
		{
			onClicked: {console.log("button")}
		}
	}


	ActionController {
		id: actionController
		path: Settings.baseURL + "/people"
	}

	Component.onCompleted: {
		actionController.index()
	}
}
