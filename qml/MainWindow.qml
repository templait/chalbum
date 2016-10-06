import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
	ActionController {
		id: actionController
		path: "http://localhost:3001/people"
	}

	Component.onCompleted: {
		actionController.index()
	}
}
