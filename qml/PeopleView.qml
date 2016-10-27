import QtQuick 2.0
import "."

ListView {
	model: ListModel{}

	ActionController {
		id: peopleController
		path: Settings.baseURL + "/people"
		onIndexReceived: {
			JSON.parse(request.responseText).forEach(function(e){
				model.append(e)
			})
		}
	}

	Component.onCompleted: {peopleController.index()}

	/*delegate: Item {
		width: 401
		height: 131
		Column {
			anchors.fill: parent
			Rectangle {
				height: 10//parent.height-1
				anchors {left: parent.left; right: parent.right}
				color: "white"
				Row {
					Text {
						text: name
					}
				}
			}
			Rectangle {
				height: 1
				anchors {left: parent.left; right: parent.right}
				color: "#808080"
			}
		}
	}*/

	delegate: PersonDelegate{}
}

