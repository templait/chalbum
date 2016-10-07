import QtQuick 2.5
import "."

Rectangle {
	color: "#0037ff"
	width: 200
	height: 30
	Component.onCompleted: {console.error(Style.ordinarFont.family)}
}
