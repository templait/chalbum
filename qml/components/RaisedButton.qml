import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
	property color shadowColor: "#b4000000"
	property double horizontalOffset: 1
	property double verticalOffset: 1
	property alias content: __content.sourceComponent
	signal clicked()

	Loader {id: __content }
	width: __content.width + horizontalOffset
	height: __content.height + verticalOffset
	DropShadow {
		id: effect
		anchors.fill: __content
		horizontalOffset: parent.horizontalOffset
		verticalOffset: parent.verticalOffset
		radius: 4
		samples: 6
		color: "#b4000000"
		source: __content
	}

	MouseArea {
		id: mouseArea
		anchors.fill: parent
		onPressed: {
			effect.color = "#00000000"
			__content.y += verticalOffset
			__content.x += horizontalOffset
		}
		onReleased: {
			effect.color = shadowColor
			__content.y -= verticalOffset
			__content.x -= horizontalOffset
		}
		onClicked: parent.clicked()
	}
}
