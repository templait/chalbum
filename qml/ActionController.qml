import QtQuick 2.5

QtObject {

	//! type:string Путь к сущности на сервисе.
	property string path

	function index() {
		__sendRequest(function(r) {
            console.error(r.responseText)
		})
	}

	function __sendRequest(callback, method, value, e_path) {
		e_path = e_path || path
		method = method || "GET"

		var request = new XMLHttpRequest()
		request.open(method, e_path, true)
		request.onreadystatechange = function () {
			if (request.readyState === XMLHttpRequest.DONE) {
				callback(request)
			}
		}

		if(!!value && ["PUT", "POST"].some(function(m) {return m === method})) {
			var arg = (typeof value !== "string") ? JSON.stringify(value) : value
			request.setRequestHeader("Content-type", "application/json")
			request.setRequestHeader("Content-Length", arg.length)
			request.send(arg)
		}
		else {
			request.send()
		}
	}
}
