import QtQuick 2.0
import "."
import "./components"

Rectangle {
	MouseArea {
		anchors.fill: parent
		onWheel: function(w) {}
	}
	Rectangle {
		anchors.centerIn: parent
		color: Style.formColor
		width: dialogLoader.implicitWidth + Style.moduleSize*2
		height: dialogLoader.implicitHeight + title.height
		Item {
			id: title
			anchors {
				top: parent.top
				left: parent.left
				right: parent.right
				margins: Style.moduleSize
			}
			height: label.implicitHeight+Style.moduleSize
			Text {
				id: label
				anchors {
					horizontalCenter: parent.horizontalCenter
					left: parent.left
				}
				font: Style.header2Font
			}
			CloseButton {
				anchors.right: parent.right
				anchors.top: parent.top
				onClicked: ShowDialog.close()
			}
		}
		Loader {
			id: dialogLoader
			sourceComponent: ShowDialog.content
			anchors {
				topMargin: Style.moduleSize*3
				top: title.bottom
			}
			x: Style.moduleSize

			onLoaded: { label.text = item.title }
		}
	}
	color: "#80000000"
}
