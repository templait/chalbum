pragma Singleton
import QtQuick 2.5

Item {
	property color regularTextColor: "black"
	property color borderColor: "#666666"
	property color formColor: "#FFFFFF"
	property int moduleSize: 10

	property font regularFont: Qt.font({family: 'Open Sans', pixelSize: 14})
	property font header2Font: Qt.font({family: 'Open Sans', pixelSize: 24, bold: true})
}
