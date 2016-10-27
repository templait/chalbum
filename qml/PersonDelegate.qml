import QtQuick 2.0

Item {
	id: item1
		width: 401
		height: 131

  Rectangle {
	  id: rectangle1
	  color: "#ffffff"
	  anchors.bottom: rectangle2.top
	  anchors.bottomMargin: 0
	  anchors.topMargin: 0
	  anchors.right: parent.right
	  anchors.left: parent.left
	  anchors.top: parent.top

   Image {
	   id: image1
	   y: 11
	   width: 162
	   height: 113
	   anchors.verticalCenter: parent.verticalCenter
	   fillMode: Image.PreserveAspectCrop
	   anchors.left: parent.left
	   anchors.leftMargin: 10
	   source: "../svg/NoPhoto.svg"
   }

   Text {
	   id: text1
	   x: 188
	   y: 36
	   text: name
	   font.pixelSize: 12
   }
  }

  Rectangle {
	  id: rectangle2
	  y: 106
	  height: 1
	  color: "#808080"
	  anchors.right: parent.right
	  anchors.rightMargin: 0
	  anchors.left: parent.left
	  anchors.leftMargin: 0
	  anchors.bottom: parent.bottom
	  anchors.bottomMargin: 0
	  border.width: 0
  }

}
