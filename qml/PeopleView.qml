import QtQuick 2.0
import "."

ListView {
	property var model
	ActionController {
		id: peopleController
		path: Settings.baseURL + "/people"
		onIndexReceived: {
			//model = JSON.parse(request.responseText)
		}
	}

	//Component.onCompleted: {peopleController.index()}

	width: 640
	height: 480
	model :  ListModel {
		ListElement {
			name: "Bill Smith"
			number: "555 3264"
		}
		ListElement {
			name: "John Brown"
			number: "555 8426"
		}
		ListElement {
			name: "Sam Wise"
			number: "555 0473"
		}
	}

	/*delegate: LineEdit {
		text: name
	}*/
	delegate: Rectangle {
		color: "red"
		width: 100
		height: 30
	}

	Component.onCompleted: {console.log(model.count)}
}
