import QtQuick 2.0

Item {
	id: item1
	Text {
		id: text1
		text: qsTr("Title")
		anchors.left: parent.left
		anchors.leftMargin: 10
		anchors.top: parent.top
		anchors.topMargin: 10
		font.bold: true
		font.pixelSize: 24
	}

 }
