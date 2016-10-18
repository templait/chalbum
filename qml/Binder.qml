import QtQuick 2.0

QtObject {
	property var source
	property string sourceProperty: "value"
	property var target
	property string targetProperty: "value"

	Component.onCompleted: {
		if(target[targetProperty]) {
			source[sourceProperty] = target[targetProperty]
		}
		/*else {
			console.log("target undef")
		}*/
		source[sourceProperty + "Changed"].connect(function(val){
			target[targetProperty] = source[sourceProperty]
		})
	}
}
