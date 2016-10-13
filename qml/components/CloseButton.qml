import QtQuick 2.0

Image {
	signal clicked()
	source: "svg/red-cross.svg"

	MouseArea {
		anchors.fill: parent
		onClicked: parent.clicked()
	}
}
