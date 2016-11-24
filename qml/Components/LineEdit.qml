import QtQuick 2.7
import "."

Rectangle {
	property alias placeholderText: placeholder.text
	property alias length: input.length
	property alias text: input.text

	border.color: Style.borderColor
	border.width: 1
	radius: 3
	width: 200
	height: 30

	Item
	{
		anchors {
			leftMargin: Style.moduleSize
			rightMargin: Style.moduleSize
			fill: parent
		}
		TextInput {
			id: input
			anchors.fill: parent
			font: Style.regularFont
			color: Style.regularTextColor
			verticalAlignment: Text.AlignVCenter
			horizontalAlignment: Text.AlignLeft
			clip: true
			padding: 0
		}
		Text {
			id: placeholder
			anchors.fill: parent
			color: Style.borderColor
			focus: true
			z: 1
			horizontalAlignment: input.horizontalAlignment
			verticalAlignment: input.verticalAlignment
		}

		state: placeholder.text.length && !input.length ? "show-placeholder" : "hide-placeholder"

		states: [
			State {
				name: "show-palceholder"
				PropertyChanges { target: placeholder; visible: true }
			},
			State {
				name: "hide-placeholder"
				PropertyChanges { target: placeholder; visible: false }
			}
		]
	}
}
