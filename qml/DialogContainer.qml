import QtQuick 2.0
import "Components" 1.0 as Components
import "."

Rectangle {
	MouseArea {
		anchors.fill: parent
		onWheel: function(w) {}
	}
	Rectangle {
		anchors.centerIn: parent
		color: Components.Style.formColor
		width: dialogLoader.implicitWidth + Components.Style.moduleSize*2
		height: dialogLoader.implicitHeight + title.height
		Item {
			id: title
			anchors {
				top: parent.top
				left: parent.left
				right: parent.right
				margins: Components.Style.moduleSize
			}
			height: label.implicitHeight+Components.Style.moduleSize
			Text {
				id: label
				anchors {
					horizontalCenter: parent.horizontalCenter
					left: parent.left
				}
				font: Components.Style.header2Font
			}
			Components.CloseButton {
				anchors.right: parent.right
				anchors.top: parent.top
				onClicked: ShowDialog.close()
			}
		}
		Loader {
			id: dialogLoader
			sourceComponent: ShowDialog.content
			anchors {
				topMargin: Components.Style.moduleSize*3
				top: title.bottom
			}
			x: Components.Style.moduleSize

			onLoaded: { label.text = item.title }
		}
	}
	color: "#80000000"
}
