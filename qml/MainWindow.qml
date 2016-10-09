import QtQuick 2.5
import QtQuick.Controls 1.4
import "./components"
import "."

ApplicationWindow {
	width: 800
	height: 600
	LineEdit {
		placeholderText: "Type some text here"
	}

	ActionController {
		id: actionController
		path: Settings.baseURL + "/people"
	}

	Component.onCompleted: {
		actionController.index()
		//console.error(Settings.style.fontFamily)
	}
}
