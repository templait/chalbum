import QtQuick 2.5
import QtQuick.Controls 1.4
import "./components"
import "./forms"
import "."

ApplicationWindow {
	Component {
		id: person
		PersonForm{
		}
	}
	Row {
		anchors {
			top: parent.top
			bottom: parent.bottom
		}
		Rectangle
		{
			id: personPanel
			color: "#777777"
			width: 100
			anchors {
				top: parent.top
				bottom: parent.bottom
				}
				FloatingButton
				{
					onClicked: ShowDialog.open(person)
					anchors {
						horizontalCenter: parent.right
						bottom: parent.bottom
						bottomMargin: Style.moduleSize*2
					}
				}
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
