/* Goto TitlePage und Goto Overview */

(function ( document, window ) {
    'use strict';
    // wait for impress.js to be initialized
    document.addEventListener("impress:init", function (event) {
        var api = event.detail.api;
        var gc = api.lib.gc;
        
        gc.addEventListener(document, "keyup", function ( event ) {
			// 'o' springt direkt zur Überblick-Folie
			if ( event.keyCode === 79) {
				api.goto("overview")
			}
			// 't' springt direkt zum Anfang
			if ( event.keyCode === 84) {
				api.goto("TitlePage")
			}
			if ( event.keyCode === 81) {
				if(document.getElementById("impress-toolbar").style.display === "none") {
					document.getElementById("impress-toolbar").style.display = "block"
				} else {
					document.getElementById("impress-toolbar").style.display = "none"
				}
			}
        }, false);

    }, false);
})(document, window);