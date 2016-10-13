pragma Singleton
import QtQuick 2.0

QtObject {
	property bool show: false
	property Component content

	function open(dialog) {
		show = true
		content = dialog
	}

	function close(dialog) {
		show = false
		content = null
	}
}
