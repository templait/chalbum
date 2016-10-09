import QtQuick 2.5
import QtQuick.Controls 2.0
import "."

TextField {
	font: Style.ordinaryFont
	color: Style.ordinaryTextColor
	background: Rectangle {
		border.color: Style.borderColor
		border.width: 1
		radius: 3
		width: 200
		height: 30
	}
}
