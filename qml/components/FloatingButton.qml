import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
	property color shadowColor: "#b4000000"
	property double horizontalOffset: 1
	property double verticalOffset: 1
	signal clicked()

	Image {
		id: image
		source: "svg/AddButton.svg"
	}
	width: image.width + horizontalOffset
	height: image.height + verticalOffset
	DropShadow {
		id: effect
		anchors.fill: image
		horizontalOffset: parent.horizontalOffset
		verticalOffset: parent.verticalOffset
		radius: 4
		samples: 6
		color: "#b4000000"
		source: image
	}

	MouseArea {
		id: mouseArea
		anchors.fill: parent
		onPressed: {
			effect.color = "#00000000"
			image.y += verticalOffset
			image.x += horizontalOffset
		}
		onReleased: {
			effect.color = shadowColor
			image.y -= verticalOffset
			image.x -= horizontalOffset
		}
		onClicked: parent.clicked()
	}
}
