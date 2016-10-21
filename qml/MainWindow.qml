import QtQuick 2.5
import QtQuick.Controls 1.4
import "./components"
import "./forms"
import "."

ApplicationWindow {
	Component {
		id: person
		PersonForm{
			title: qsTr("Новая персона")
		}
	}
	Row {
		anchors {
			top: parent.top
			bottom: parent.bottom
		}
		PeopleView
		{
			id: peopleView
			width: 200
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

	DialogContainer {
		anchors.fill: parent
		visible: ShowDialog.show
	}
}
