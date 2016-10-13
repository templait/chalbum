import QtQuick 2.5
import "."

Rectangle {
	property alias placeholderText: placeholderText.text
	TextInput {
		anchors.fill: parent
		font: Style.regularFont
		color: Style.regularTextColor
	}
	Text {
		id: placeholderText
		anchors.fill: parent
		visible: false
	}
	border.color: Style.borderColor
	border.width: 1
	radius: 3
	width: 200
	height: 30
}
