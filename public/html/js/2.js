webpackJsonp([2],{

/***/ 738:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(870)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(872)
/* template */
var __vue_template__ = __webpack_require__(920)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-19d91730"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\layout.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-19d91730", Component.options)
  } else {
    hotAPI.reload("data-v-19d91730", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 756:
/***/ (function(module, exports) {

module.exports = "/images/logo_black.png?808637a0af399b8a11165eb3791a3658";

/***/ }),

/***/ 781:
/***/ (function(module, exports, __webpack_require__) {

/*
	MIT License http://www.opensource.org/licenses/mit-license.php
	Author Tobias Koppers @sokra
*/

var stylesInDom = {};

var	memoize = function (fn) {
	var memo;

	return function () {
		if (typeof memo === "undefined") memo = fn.apply(this, arguments);
		return memo;
	};
};

var isOldIE = memoize(function () {
	// Test for IE <= 9 as proposed by Browserhacks
	// @see http://browserhacks.com/#hack-e71d8692f65334173fee715c222cb805
	// Tests for existence of standard globals is to allow style-loader
	// to operate correctly into non-standard environments
	// @see https://github.com/webpack-contrib/style-loader/issues/177
	return window && document && document.all && !window.atob;
});

var getElement = (function (fn) {
	var memo = {};

	return function(selector) {
		if (typeof memo[selector] === "undefined") {
			memo[selector] = fn.call(this, selector);
		}

		return memo[selector]
	};
})(function (target) {
	return document.querySelector(target)
});

var singleton = null;
var	singletonCounter = 0;
var	stylesInsertedAtTop = [];

var	fixUrls = __webpack_require__(782);

module.exports = function(list, options) {
	if (typeof DEBUG !== "undefined" && DEBUG) {
		if (typeof document !== "object") throw new Error("The style-loader cannot be used in a non-browser environment");
	}

	options = options || {};

	options.attrs = typeof options.attrs === "object" ? options.attrs : {};

	// Force single-tag solution on IE6-9, which has a hard limit on the # of <style>
	// tags it will allow on a page
	if (!options.singleton) options.singleton = isOldIE();

	// By default, add <style> tags to the <head> element
	if (!options.insertInto) options.insertInto = "head";

	// By default, add <style> tags to the bottom of the target
	if (!options.insertAt) options.insertAt = "bottom";

	var styles = listToStyles(list, options);

	addStylesToDom(styles, options);

	return function update (newList) {
		var mayRemove = [];

		for (var i = 0; i < styles.length; i++) {
			var item = styles[i];
			var domStyle = stylesInDom[item.id];

			domStyle.refs--;
			mayRemove.push(domStyle);
		}

		if(newList) {
			var newStyles = listToStyles(newList, options);
			addStylesToDom(newStyles, options);
		}

		for (var i = 0; i < mayRemove.length; i++) {
			var domStyle = mayRemove[i];

			if(domStyle.refs === 0) {
				for (var j = 0; j < domStyle.parts.length; j++) domStyle.parts[j]();

				delete stylesInDom[domStyle.id];
			}
		}
	};
};

function addStylesToDom (styles, options) {
	for (var i = 0; i < styles.length; i++) {
		var item = styles[i];
		var domStyle = stylesInDom[item.id];

		if(domStyle) {
			domStyle.refs++;

			for(var j = 0; j < domStyle.parts.length; j++) {
				domStyle.parts[j](item.parts[j]);
			}

			for(; j < item.parts.length; j++) {
				domStyle.parts.push(addStyle(item.parts[j], options));
			}
		} else {
			var parts = [];

			for(var j = 0; j < item.parts.length; j++) {
				parts.push(addStyle(item.parts[j], options));
			}

			stylesInDom[item.id] = {id: item.id, refs: 1, parts: parts};
		}
	}
}

function listToStyles (list, options) {
	var styles = [];
	var newStyles = {};

	for (var i = 0; i < list.length; i++) {
		var item = list[i];
		var id = options.base ? item[0] + options.base : item[0];
		var css = item[1];
		var media = item[2];
		var sourceMap = item[3];
		var part = {css: css, media: media, sourceMap: sourceMap};

		if(!newStyles[id]) styles.push(newStyles[id] = {id: id, parts: [part]});
		else newStyles[id].parts.push(part);
	}

	return styles;
}

function insertStyleElement (options, style) {
	var target = getElement(options.insertInto)

	if (!target) {
		throw new Error("Couldn't find a style target. This probably means that the value for the 'insertInto' parameter is invalid.");
	}

	var lastStyleElementInsertedAtTop = stylesInsertedAtTop[stylesInsertedAtTop.length - 1];

	if (options.insertAt === "top") {
		if (!lastStyleElementInsertedAtTop) {
			target.insertBefore(style, target.firstChild);
		} else if (lastStyleElementInsertedAtTop.nextSibling) {
			target.insertBefore(style, lastStyleElementInsertedAtTop.nextSibling);
		} else {
			target.appendChild(style);
		}
		stylesInsertedAtTop.push(style);
	} else if (options.insertAt === "bottom") {
		target.appendChild(style);
	} else {
		throw new Error("Invalid value for parameter 'insertAt'. Must be 'top' or 'bottom'.");
	}
}

function removeStyleElement (style) {
	if (style.parentNode === null) return false;
	style.parentNode.removeChild(style);

	var idx = stylesInsertedAtTop.indexOf(style);
	if(idx >= 0) {
		stylesInsertedAtTop.splice(idx, 1);
	}
}

function createStyleElement (options) {
	var style = document.createElement("style");

	options.attrs.type = "text/css";

	addAttrs(style, options.attrs);
	insertStyleElement(options, style);

	return style;
}

function createLinkElement (options) {
	var link = document.createElement("link");

	options.attrs.type = "text/css";
	options.attrs.rel = "stylesheet";

	addAttrs(link, options.attrs);
	insertStyleElement(options, link);

	return link;
}

function addAttrs (el, attrs) {
	Object.keys(attrs).forEach(function (key) {
		el.setAttribute(key, attrs[key]);
	});
}

function addStyle (obj, options) {
	var style, update, remove, result;

	// If a transform function was defined, run it on the css
	if (options.transform && obj.css) {
	    result = options.transform(obj.css);

	    if (result) {
	    	// If transform returns a value, use that instead of the original css.
	    	// This allows running runtime transformations on the css.
	    	obj.css = result;
	    } else {
	    	// If the transform function returns a falsy value, don't add this css.
	    	// This allows conditional loading of css
	    	return function() {
	    		// noop
	    	};
	    }
	}

	if (options.singleton) {
		var styleIndex = singletonCounter++;

		style = singleton || (singleton = createStyleElement(options));

		update = applyToSingletonTag.bind(null, style, styleIndex, false);
		remove = applyToSingletonTag.bind(null, style, styleIndex, true);

	} else if (
		obj.sourceMap &&
		typeof URL === "function" &&
		typeof URL.createObjectURL === "function" &&
		typeof URL.revokeObjectURL === "function" &&
		typeof Blob === "function" &&
		typeof btoa === "function"
	) {
		style = createLinkElement(options);
		update = updateLink.bind(null, style, options);
		remove = function () {
			removeStyleElement(style);

			if(style.href) URL.revokeObjectURL(style.href);
		};
	} else {
		style = createStyleElement(options);
		update = applyToTag.bind(null, style);
		remove = function () {
			removeStyleElement(style);
		};
	}

	update(obj);

	return function updateStyle (newObj) {
		if (newObj) {
			if (
				newObj.css === obj.css &&
				newObj.media === obj.media &&
				newObj.sourceMap === obj.sourceMap
			) {
				return;
			}

			update(obj = newObj);
		} else {
			remove();
		}
	};
}

var replaceText = (function () {
	var textStore = [];

	return function (index, replacement) {
		textStore[index] = replacement;

		return textStore.filter(Boolean).join('\n');
	};
})();

function applyToSingletonTag (style, index, remove, obj) {
	var css = remove ? "" : obj.css;

	if (style.styleSheet) {
		style.styleSheet.cssText = replaceText(index, css);
	} else {
		var cssNode = document.createTextNode(css);
		var childNodes = style.childNodes;

		if (childNodes[index]) style.removeChild(childNodes[index]);

		if (childNodes.length) {
			style.insertBefore(cssNode, childNodes[index]);
		} else {
			style.appendChild(cssNode);
		}
	}
}

function applyToTag (style, obj) {
	var css = obj.css;
	var media = obj.media;

	if(media) {
		style.setAttribute("media", media)
	}

	if(style.styleSheet) {
		style.styleSheet.cssText = css;
	} else {
		while(style.firstChild) {
			style.removeChild(style.firstChild);
		}

		style.appendChild(document.createTextNode(css));
	}
}

function updateLink (link, options, obj) {
	var css = obj.css;
	var sourceMap = obj.sourceMap;

	/*
		If convertToAbsoluteUrls isn't defined, but sourcemaps are enabled
		and there is no publicPath defined then lets turn convertToAbsoluteUrls
		on by default.  Otherwise default to the convertToAbsoluteUrls option
		directly
	*/
	var autoFixUrls = options.convertToAbsoluteUrls === undefined && sourceMap;

	if (options.convertToAbsoluteUrls || autoFixUrls) {
		css = fixUrls(css);
	}

	if (sourceMap) {
		// http://stackoverflow.com/a/26603875
		css += "\n/*# sourceMappingURL=data:application/json;base64," + btoa(unescape(encodeURIComponent(JSON.stringify(sourceMap)))) + " */";
	}

	var blob = new Blob([css], { type: "text/css" });

	var oldSrc = link.href;

	link.href = URL.createObjectURL(blob);

	if(oldSrc) URL.revokeObjectURL(oldSrc);
}


/***/ }),

/***/ 782:
/***/ (function(module, exports) {


/**
 * When source maps are enabled, `style-loader` uses a link element with a data-uri to
 * embed the css on the page. This breaks all relative urls because now they are relative to a
 * bundle instead of the current page.
 *
 * One solution is to only use full urls, but that may be impossible.
 *
 * Instead, this function "fixes" the relative urls to be absolute according to the current page location.
 *
 * A rudimentary test suite is located at `test/fixUrls.js` and can be run via the `npm test` command.
 *
 */

module.exports = function (css) {
  // get current location
  var location = typeof window !== "undefined" && window.location;

  if (!location) {
    throw new Error("fixUrls requires window.location");
  }

	// blank or null?
	if (!css || typeof css !== "string") {
	  return css;
  }

  var baseUrl = location.protocol + "//" + location.host;
  var currentDir = baseUrl + location.pathname.replace(/\/[^\/]*$/, "/");

	// convert each url(...)
	/*
	This regular expression is just a way to recursively match brackets within
	a string.

	 /url\s*\(  = Match on the word "url" with any whitespace after it and then a parens
	   (  = Start a capturing group
	     (?:  = Start a non-capturing group
	         [^)(]  = Match anything that isn't a parentheses
	         |  = OR
	         \(  = Match a start parentheses
	             (?:  = Start another non-capturing groups
	                 [^)(]+  = Match anything that isn't a parentheses
	                 |  = OR
	                 \(  = Match a start parentheses
	                     [^)(]*  = Match anything that isn't a parentheses
	                 \)  = Match a end parentheses
	             )  = End Group
              *\) = Match anything and then a close parens
          )  = Close non-capturing group
          *  = Match anything
       )  = Close capturing group
	 \)  = Match a close parens

	 /gi  = Get all matches, not the first.  Be case insensitive.
	 */
	var fixedCss = css.replace(/url\s*\(((?:[^)(]|\((?:[^)(]+|\([^)(]*\))*\))*)\)/gi, function(fullMatch, origUrl) {
		// strip quotes (if they exist)
		var unquotedOrigUrl = origUrl
			.trim()
			.replace(/^"(.*)"$/, function(o, $1){ return $1; })
			.replace(/^'(.*)'$/, function(o, $1){ return $1; });

		// already a full url? no change
		if (/^(#|data:|http:\/\/|https:\/\/|file:\/\/\/)/i.test(unquotedOrigUrl)) {
		  return fullMatch;
		}

		// convert the url to a full url
		var newUrl;

		if (unquotedOrigUrl.indexOf("//") === 0) {
		  	//TODO: should we add protocol?
			newUrl = unquotedOrigUrl;
		} else if (unquotedOrigUrl.indexOf("/") === 0) {
			// path should be relative to the base url
			newUrl = baseUrl + unquotedOrigUrl; // already starts with '/'
		} else {
			// path should be relative to current directory
			newUrl = currentDir + unquotedOrigUrl.replace(/^\.\//, ""); // Strip leading './'
		}

		// send back the fixed url(...)
		return "url(" + JSON.stringify(newUrl) + ")";
	});

	// send back the fixed css
	return fixedCss;
};


/***/ }),

/***/ 824:
/***/ (function(module, exports) {

module.exports = "/images/avatar3.jpg?7e593f7330076b4b89e96f89b9396c0a";

/***/ }),

/***/ 870:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(871);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("05e4db5e", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../node_modules/css-loader/index.js!../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-19d91730\",\"scoped\":true,\"hasInlineConfig\":true}!../node_modules/sass-loader/lib/loader.js!../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./layout.vue", function() {
     var newContent = require("!!../node_modules/css-loader/index.js!../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-19d91730\",\"scoped\":true,\"hasInlineConfig\":true}!../node_modules/sass-loader/lib/loader.js!../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./layout.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 871:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.wrapper[data-v-19d91730]:before,\n.wrapper[data-v-19d91730]:after {\n  display: table;\n  content: \" \";\n}\n.wrapper[data-v-19d91730]:after {\n  clear: both;\n}\n.wrapper[data-v-19d91730] {\n  display: table;\n  overflow-x: hidden;\n  width: 100%;\n  max-width: 100%;\n  table-layout: fixed;\n}\n.right-aside[data-v-19d91730],\n.left-aside[data-v-19d91730] {\n  padding: 0;\n  display: table-cell;\n  vertical-align: top;\n}\n.right-aside[data-v-19d91730] {\n  background-color: #ebf2f6 !important;\n}\n@media (max-width: 992px) {\n.wrapper > .right-aside[data-v-19d91730] {\n    width: 100vw;\n    min-width: 100vw;\n}\n}\n.lds-spinner[data-v-19d91730] {\n  background: none repeat scroll 0 0 black;\n  position: fixed;\n  display: block;\n  opacity: 0.5;\n  z-index: 1000001;\n  left: 0;\n  top: 0;\n  padding: 20% 0 0 50%;\n  height: 100%;\n  width: 100%;\n}\n.lds-spinner div[data-v-19d91730] {\n  -webkit-transform-origin: 32px 32px;\n          transform-origin: 32px 32px;\n  -webkit-animation: lds-spinner-data-v-19d91730 1.2s linear infinite;\n          animation: lds-spinner-data-v-19d91730 1.2s linear infinite;\n}\n.lds-spinner div[data-v-19d91730]:after {\n  content: \" \";\n  display: block;\n  position: absolute;\n  top: 3px;\n  left: 29px;\n  width: 5px;\n  height: 14px;\n  border-radius: 20%;\n  background: #fff;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(1) {\n  -webkit-transform: rotate(0deg);\n          transform: rotate(0deg);\n  -webkit-animation-delay: -1.1s;\n          animation-delay: -1.1s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(2) {\n  -webkit-transform: rotate(30deg);\n          transform: rotate(30deg);\n  -webkit-animation-delay: -1s;\n          animation-delay: -1s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(3) {\n  -webkit-transform: rotate(60deg);\n          transform: rotate(60deg);\n  -webkit-animation-delay: -0.9s;\n          animation-delay: -0.9s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(4) {\n  -webkit-transform: rotate(90deg);\n          transform: rotate(90deg);\n  -webkit-animation-delay: -0.8s;\n          animation-delay: -0.8s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(5) {\n  -webkit-transform: rotate(120deg);\n          transform: rotate(120deg);\n  -webkit-animation-delay: -0.7s;\n          animation-delay: -0.7s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(6) {\n  -webkit-transform: rotate(150deg);\n          transform: rotate(150deg);\n  -webkit-animation-delay: -0.6s;\n          animation-delay: -0.6s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(7) {\n  -webkit-transform: rotate(180deg);\n          transform: rotate(180deg);\n  -webkit-animation-delay: -0.5s;\n          animation-delay: -0.5s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(8) {\n  -webkit-transform: rotate(210deg);\n          transform: rotate(210deg);\n  -webkit-animation-delay: -0.4s;\n          animation-delay: -0.4s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(9) {\n  -webkit-transform: rotate(240deg);\n          transform: rotate(240deg);\n  -webkit-animation-delay: -0.3s;\n          animation-delay: -0.3s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(10) {\n  -webkit-transform: rotate(270deg);\n          transform: rotate(270deg);\n  -webkit-animation-delay: -0.2s;\n          animation-delay: -0.2s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(11) {\n  -webkit-transform: rotate(300deg);\n          transform: rotate(300deg);\n  -webkit-animation-delay: -0.1s;\n          animation-delay: -0.1s;\n}\n.lds-spinner div[data-v-19d91730]:nth-child(12) {\n  -webkit-transform: rotate(330deg);\n          transform: rotate(330deg);\n  -webkit-animation-delay: 0s;\n          animation-delay: 0s;\n}\n@-webkit-keyframes lds-spinner-data-v-19d91730 {\n0% {\n    opacity: 1;\n}\n100% {\n    opacity: 0;\n}\n}\n@keyframes lds-spinner-data-v-19d91730 {\n0% {\n    opacity: 1;\n}\n100% {\n    opacity: 0;\n}\n}\n", ""]);

// exports


/***/ }),

/***/ 872:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_components_layouts_preloader_preloader__ = __webpack_require__(873);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_components_layouts_preloader_preloader___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_components_layouts_preloader_preloader__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_components_layouts_right_side__ = __webpack_require__(877);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_components_layouts_right_side___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_components_layouts_right_side__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_components_layouts_left_side_default_left_side__ = __webpack_require__(882);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_components_layouts_left_side_default_left_side___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_components_layouts_left_side_default_left_side__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_components_layouts_header_fixed_header__ = __webpack_require__(906);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_components_layouts_header_fixed_header___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_components_layouts_header_fixed_header__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_assets_sass_custom_scss__ = __webpack_require__(916);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_assets_sass_custom_scss___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_assets_sass_custom_scss__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_components_layouts_css_fixed_menu_scss__ = __webpack_require__(918);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_components_layouts_css_fixed_menu_scss___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_components_layouts_css_fixed_menu_scss__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_animejs__ = __webpack_require__(224);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_animejs___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_animejs__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/**
 * These are the files that enable you to change layouts and other options
 */

/**
 * import preloader
 * choose from preloader and bounce
 */


/**
 * The right side content
 */


/**
 * import left-side from default or horizontal-menu
 * eg: import left_side from 'components/layouts/left-side/horizontal-menu/left-side'
 */


/**
 * import from header or fixed-header or no-header
 */


/**
 * Styles
 */

/**
 * Main stylesheet for the layout
 */


/**
 * Style required for a boxed layout
 */
// import 'components/layouts/css/boxed.scss'

/**
 * Style required for a fixed-menu layout
 */


/**
 * Style required for a compact-menu layout
 */
// import 'components/layouts/css/compact-menu.scss'

/**
 * Style required for a centered-logo layout
 */
// import 'components/layouts/css/centered-logo.scss'

/**
 * Style required for a content-menu layout
 */
// import 'components/layouts/css/content_menu.scss'


/**
 * import animejs for the menu transition effects
 */


/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'layout',
  components: {
    preloader: __WEBPACK_IMPORTED_MODULE_0_components_layouts_preloader_preloader___default.a,
    vueadmin_header: __WEBPACK_IMPORTED_MODULE_3_components_layouts_header_fixed_header___default.a,
    left_side: __WEBPACK_IMPORTED_MODULE_2_components_layouts_left_side_default_left_side___default.a,
    right_side: __WEBPACK_IMPORTED_MODULE_1_components_layouts_right_side___default.a
  },
  data: function data() {
    return {
      showtopbtn: false
    };
  },
  mounted: function mounted() {
    if (window.innerWidth <= 992) {
      this.$store.commit('left_menu', 'close');
    }
  }
});

/***/ }),

/***/ 873:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(874)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = null
/* template */
var __vue_template__ = __webpack_require__(876)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-29609c7d"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\preloader\\preloader.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-29609c7d", Component.options)
  } else {
    hotAPI.reload("data-v-29609c7d", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 874:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(875);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("6d87c9e2", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-29609c7d\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/sass-loader/lib/loader.js!../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./preloader.vue", function() {
     var newContent = require("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-29609c7d\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/sass-loader/lib/loader.js!../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./preloader.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 875:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.cssload-aim[data-v-29609c7d] {\n  position: fixed;\n  z-index: 1500;\n  left: calc(100% - 42px);\n  top: 60px;\n  border-radius: 20px;\n  background-color: transparent;\n  border-width: 15px;\n  border-style: double;\n  border-color: transparent #428bca;\n  -webkit-animation: cssload-anim-data-v-29609c7d 0.7s linear infinite;\n          animation: cssload-anim-data-v-29609c7d 0.7s linear infinite;\n}\n@media screen and (max-width: 560px) {\n.cssload-aim[data-v-29609c7d] {\n      top: 106px;\n}\n}\n@-webkit-keyframes cssload-anim-data-v-29609c7d {\n0% {\n    -webkit-transform: rotate(0deg);\n            transform: rotate(0deg);\n}\n100% {\n    -webkit-transform: rotate(360deg);\n            transform: rotate(360deg);\n}\n}\n@keyframes cssload-anim-data-v-29609c7d {\n0% {\n    -webkit-transform: rotate(0deg);\n            transform: rotate(0deg);\n}\n100% {\n    -webkit-transform: rotate(360deg);\n            transform: rotate(360deg);\n}\n}\n", ""]);

// exports


/***/ }),

/***/ 876:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "cssload-aim" })
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-29609c7d", module.exports)
  }
}

/***/ }),

/***/ 877:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(878)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(880)
/* template */
var __vue_template__ = __webpack_require__(881)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-3b3a87ea"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\right-side.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-3b3a87ea", Component.options)
  } else {
    hotAPI.reload("data-v-3b3a87ea", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 878:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(879);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("022c2b28", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../node_modules/css-loader/index.js!../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-3b3a87ea\",\"scoped\":true,\"hasInlineConfig\":true}!../../../node_modules/sass-loader/lib/loader.js!../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./right-side.vue", function() {
     var newContent = require("!!../../../node_modules/css-loader/index.js!../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-3b3a87ea\",\"scoped\":true,\"hasInlineConfig\":true}!../../../node_modules/sass-loader/lib/loader.js!../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./right-side.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 879:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.right-aside[data-v-3b3a87ea] {\n  padding: 0 20px 10px 20px;\n  width: 100%;\n  max-width: 100%;\n}\n.right-aside .content-header > h1[data-v-3b3a87ea] {\n    margin: 2px;\n    padding-left: 13px;\n    padding-top: 12px;\n    font-size: 20px;\n    line-height: 1.5;\n}\n.right-aside .content-header[data-v-3b3a87ea] {\n    margin: -2px -20px 25px -20px;\n    height: 55px;\n    background: #f9fafb;\n    -webkit-box-shadow: 3px 1px 5px #ccc;\n            box-shadow: 3px 1px 5px #ccc;\n}\n", ""]);

// exports


/***/ }),

/***/ 880:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
    name: "right-side",
    methods: {}
});

/***/ }),

/***/ 881:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("aside", { staticClass: "right-aside" }, [
    _c("section", { staticClass: "content-header " }, [
      _c("h1", [
        _vm._v(
          _vm._s(
            this.$store.state.page_title
              ? this.$store.state.page_title
              : this.$route.meta.title
          )
        )
      ])
    ]),
    _vm._v(" "),
    _c("section", { staticClass: "content" }, [_vm._t("default")], 2)
  ])
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-3b3a87ea", module.exports)
  }
}

/***/ }),

/***/ 882:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(883)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(885)
/* template */
var __vue_template__ = __webpack_require__(905)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-1343de30"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\left-side\\default\\left-side.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-1343de30", Component.options)
  } else {
    hotAPI.reload("data-v-1343de30", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 883:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(884);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("beb725e4", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../../node_modules/css-loader/index.js!../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-1343de30\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../node_modules/sass-loader/lib/loader.js!../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./left-side.vue", function() {
     var newContent = require("!!../../../../../node_modules/css-loader/index.js!../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-1343de30\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../node_modules/sass-loader/lib/loader.js!../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./left-side.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 884:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.left-aside[data-v-1343de30] {\n  width: 250px;\n  background: #fff;\n  background-repeat: repeat-y;\n}\n.navigation[data-v-1343de30] {\n  padding: 0;\n}\n.divider[data-v-1343de30] {\n  margin-top: 10px;\n  list-style-type: none;\n  border-bottom: 1px solid #ececec;\n  padding-bottom: 6px;\n}\n.divider span[data-v-1343de30] {\n  font-size: 15px;\n  font-weight: 700;\n  color: #fff;\n  margin: 20px 20px -15px 20px;\n}\n.sidebar[data-v-1343de30] {\n  display: block;\n  font-size: 14px;\n  letter-spacing: 1px;\n}\n.content[data-v-1343de30] {\n  display: block;\n  width: auto;\n  overflow-x: hidden;\n  padding: 0 15px;\n}\n.badge-success[data-v-1343de30] {\n  background-color: #22d69d;\n}\n.badge[data-v-1343de30] {\n  padding: 0.60em 0.7em;\n  border-radius: 0.75rem;\n}\n.nav_profile[data-v-1343de30] {\n  border-bottom: 1px solid #eee;\n}\n", ""]);

// exports


/***/ }),

/***/ 885:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__menu__ = __webpack_require__(886);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__menu___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0__menu__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__left_profile_user_profile2_vue__ = __webpack_require__(900);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__left_profile_user_profile2_vue___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1__left_profile_user_profile2_vue__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__menu_js__ = __webpack_require__(904);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//




/* harmony default export */ __webpack_exports__["default"] = ({
    name: "left-side",
    components: {
        vmenu: __WEBPACK_IMPORTED_MODULE_0__menu__["vmenu"],
        vsubMenu: __WEBPACK_IMPORTED_MODULE_0__menu__["vsubMenu"],
        vmenuItem: __WEBPACK_IMPORTED_MODULE_0__menu__["vmenuItem"],
        profile: __WEBPACK_IMPORTED_MODULE_1__left_profile_user_profile2_vue___default.a
    },
    data: function data() {
        return {
            menuitems: __WEBPACK_IMPORTED_MODULE_2__menu_js__["a" /* default */]
        };
    }
});

/***/ }),

/***/ 886:
/***/ (function(module, exports, __webpack_require__) {

exports.vmenu = __webpack_require__(887);
exports.vsubMenu = __webpack_require__(890);
exports.vmenuItem = __webpack_require__(895);

/***/ }),

/***/ 887:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(888)
/* template */
var __vue_template__ = __webpack_require__(889)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = null
/* scopeId */
var __vue_scopeId__ = null
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\left-side\\default\\menu\\vueMenu.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-ef03bef6", Component.options)
  } else {
    hotAPI.reload("data-v-ef03bef6", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 888:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
    computed: {
        $collapseItems: function $collapseItems() {
            return this.$children.filter(function (child) {
                return child._isCollapseItem;
            });
        }
    },
    methods: {
        openByIndex: function openByIndex(index) {
            this.$collapseItems.forEach(function (item, i) {
                if (i !== index) {
                    item.isActived = false;
                }
            });
        }
    },
    mounted: function mounted() {
        var _this = this;

        this.$on("closeall", function (index) {
            _this.openByIndex(index);
        });
    }
});

/***/ }),

/***/ 889:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "vuemenu navigation" },
    [_vm._t("default")],
    2
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-ef03bef6", module.exports)
  }
}

/***/ }),

/***/ 890:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(891)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(893)
/* template */
var __vue_template__ = __webpack_require__(894)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-0d02bb3f"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\left-side\\default\\menu\\subMenu.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-0d02bb3f", Component.options)
  } else {
    hotAPI.reload("data-v-0d02bb3f", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 891:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(892);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("6bfcedaa", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../../../node_modules/css-loader/index.js!../../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-0d02bb3f\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../../node_modules/sass-loader/lib/loader.js!../../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./subMenu.vue", function() {
     var newContent = require("!!../../../../../../node_modules/css-loader/index.js!../../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-0d02bb3f\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../../node_modules/sass-loader/lib/loader.js!../../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./subMenu.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 892:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.collapse-item .submenu-header[data-v-0d02bb3f] {\n  cursor: pointer;\n  color: #3e6174;\n  padding: 11px 10px 11px 30px;\n}\n.collapse-item .submenu-header[data-v-0d02bb3f]:hover {\n    color: #5e7b85;\n}\n.collapse-item .submenu-header .submenu-header-title[data-v-0d02bb3f] {\n    vertical-align: text-bottom;\n}\n.collapse-item .submenu-header .active .submenu-header-title[data-v-0d02bb3f] {\n    font-weight: 600;\n}\n.collapse-item .submenu-content[data-v-0d02bb3f] {\n  background-color: #F8F7F6;\n  overflow-y: hidden;\n  position: relative;\n}\n.collapse-item .submenu-content-box[data-v-0d02bb3f]:active {\n  color: #000;\n}\n.collapse-item .submenu_icon[data-v-0d02bb3f] {\n  -webkit-transition: all 0.3s;\n  transition: all 0.3s;\n  font-size: 16px;\n  margin-top: -2px;\n  color: #3e6174;\n}\n.collapse-item.active > .submenu-header[data-v-0d02bb3f] {\n  background-color: #e6e6e6;\n  color: #3e6174;\n  font-weight: 500;\n}\n.collapse-item.active > .submenu-header > .submenu_icon[data-v-0d02bb3f] {\n    -webkit-transform: rotate(90deg);\n            transform: rotate(90deg);\n}\n.collapse-item.active > .submenu-header i[data-v-0d02bb3f] {\n    color: #3e6174 !important;\n}\n.leftmenu_icon[data-v-0d02bb3f] {\n  margin-right: 6px;\n  line-height: 20px;\n  height: 22px;\n  width: 20px;\n  text-align: center;\n  font-size: 16px;\n  color: #3e6174;\n}\n.leftmenu_icon:hover .submenu-header-title[data-v-0d02bb3f], .leftmenu_icon:hover .submenu_icon[data-v-0d02bb3f] {\n  padding-left: 50px;\n}\n", ""]);

// exports


/***/ }),

/***/ 893:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_animejs__ = __webpack_require__(224);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_animejs___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_animejs__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//


/* harmony default export */ __webpack_exports__["default"] = ({
    props: {
        selected: Boolean,
        icon: String,
        title: {
            type: String,
            required: true
        }
    },
    data: function data() {
        return {
            isActived: this.selected
        };
    },

    computed: {
        index: function index() {
            return this.$parent.$collapseItems.indexOf(this);
        }
    },
    created: function created() {
        this._isCollapseItem = true;
    },
    mounted: function mounted() {
        var _this = this;

        function activate(self) {
            if (self.$refs.box) {
                self.isActived = self.$refs.box.querySelectorAll("a.active").length >= 1 ? true : false;
            }
        }
        //change when route changes
        this.$store.subscribe(function (mutation, state) {
            if (mutation.type == "routeChange" && mutation.payload == "end") {
                setTimeout(function () {
                    activate(_this);
                }, 0);
            }
        });
        activate(this);
    },

    methods: {
        toggle: function toggle() {
            this.$parent.$emit('closeall', this.index);
            this.isActived = !this.isActived;
        },
        cancel: function cancel() {
            this.anime.pause();
        },
        before: function before(targets) {
            targets.removeAttribute('style');
        },
        enter: function enter(targets, done) {
            var height = targets.scrollHeight;
            targets.style.height = 0;
            targets.style.opacity = 0;
            __WEBPACK_IMPORTED_MODULE_0_animejs___default()({
                targets: targets,
                duration: 377,
                easing: 'easeOutExpo',
                opacity: [0, 1],
                height: height,
                complete: function complete() {
                    targets.removeAttribute('style');
                    done();
                }
            });
        },
        leave: function leave(targets, complete) {
            __WEBPACK_IMPORTED_MODULE_0_animejs___default()({
                targets: targets,
                duration: 377,
                easing: 'easeOutExpo',
                opacity: [1, 0],
                height: 0
            });
        }
    }
});

/***/ }),

/***/ 894:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "submenu collapse-item", class: { active: _vm.isActived } },
    [
      _c(
        "div",
        {
          staticClass: "submenu-header touchable",
          attrs: {
            role: "tab",
            "aria-expanded": _vm.selected ? "true" : "fase"
          },
          on: { click: _vm.toggle }
        },
        [
          _c("i", { staticClass: "leftmenu_icon\n", class: _vm.icon }),
          _vm._v(" "),
          _c("span", { staticClass: "submenu-header-title" }, [
            _vm._v(_vm._s(_vm.title))
          ]),
          _vm._v(" "),
          _vm._m(0)
        ]
      ),
      _vm._v(" "),
      _c(
        "transition",
        {
          attrs: { name: "collapsed-fade", css: false },
          on: {
            "before-appear": _vm.before,
            appear: _vm.enter,
            "appear-cancel": _vm.cancel,
            "before-enter": _vm.before,
            enter: _vm.enter,
            "enter-cancel": _vm.cancel,
            leave: _vm.leave,
            "leave-cancel": _vm.cancel
          }
        },
        [
          _c(
            "div",
            {
              directives: [
                {
                  name: "show",
                  rawName: "v-show",
                  value: _vm.isActived,
                  expression: "isActived"
                }
              ],
              staticClass: "submenu-content"
            },
            [
              _c(
                "div",
                { ref: "box", staticClass: "submenu-content-box" },
                [_vm._t("default")],
                2
              )
            ]
          )
        ]
      )
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("span", { staticClass: "submenu_icon float-right" }, [
      _c("i", { staticClass: "fa fa-angle-right" })
    ])
  }
]
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-0d02bb3f", module.exports)
  }
}

/***/ }),

/***/ 895:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(896)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(898)
/* template */
var __vue_template__ = __webpack_require__(899)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-f0c8c13c"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\left-side\\default\\menu\\MenuItem.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-f0c8c13c", Component.options)
  } else {
    hotAPI.reload("data-v-f0c8c13c", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 896:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(897);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("6ef1d2f6", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../../../node_modules/css-loader/index.js!../../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-f0c8c13c\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../../node_modules/sass-loader/lib/loader.js!../../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./MenuItem.vue", function() {
     var newContent = require("!!../../../../../../node_modules/css-loader/index.js!../../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-f0c8c13c\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../../node_modules/sass-loader/lib/loader.js!../../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./MenuItem.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 897:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\na[data-v-f0c8c13c] {\n  color: #3e6174;\n  position: relative;\n  display: block;\n  line-height: 21px;\n  padding: 10px 30px;\n}\na[data-v-f0c8c13c]:hover {\n    color: #5e7b85;\n}\na.active[data-v-f0c8c13c] {\n    color: #3e6174;\n    background-color: #e6e6e6;\n}\na.active i[data-v-f0c8c13c] {\n      color: #3e6174 !important;\n}\n\n/*.submenu-content-box .listbrdr::after{\n      content: \"\";\n     display: block;\n     position: absolute;\n     width: 11px;\n     left: 25px;\n     margin-top: -21px;\n     border-top: 2px solid #888585;\n     }*/\n.submenu-content-box .listbrdr[data-v-f0c8c13c]:active {\n  color: #000;\n}\n.submenu-content a[data-v-f0c8c13c] {\n  padding: 11px 20px 10px 45px;\n  position: relative;\n}\n.submenu-content .leftmenu_icon[data-v-f0c8c13c] {\n  font-size: 14px;\n  color: inherit;\n}\n.name[data-v-f0c8c13c] {\n  vertical-align: text-bottom;\n}\n.collapse-item .card-content .card-content-box div a[data-v-f0c8c13c] {\n  padding-left: 43px;\n}\n.leftmenu_icon[data-v-f0c8c13c] {\n  margin-right: 1px;\n  line-height: 22px;\n  height: 23px;\n  width: 20px;\n  text-align: center;\n  font-size: 16px;\n  color: #3e6174;\n}\n", ""]);

// exports


/***/ }),

/***/ 898:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
    props: ["link", "icon"]
});

/***/ }),

/***/ 899:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "listbrdr" },
    [
      _c(
        "router-link",
        { staticClass: "menu-item", attrs: { to: _vm.link, exact: "" } },
        [
          _c("i", { staticClass: "leftmenu_icon", class: _vm.icon }),
          _vm._v(" "),
          _c("span", { staticClass: "name" }, [_vm._t("default")], 2)
        ]
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-f0c8c13c", module.exports)
  }
}

/***/ }),

/***/ 900:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(901)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = null
/* template */
var __vue_template__ = __webpack_require__(903)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-7bbc2fa6"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\left-side\\left-profile\\user_profile2.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-7bbc2fa6", Component.options)
  } else {
    hotAPI.reload("data-v-7bbc2fa6", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 901:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(902);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("0aecf304", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../../node_modules/css-loader/index.js!../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-7bbc2fa6\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../node_modules/sass-loader/lib/loader.js!../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./user_profile2.vue", function() {
     var newContent = require("!!../../../../../node_modules/css-loader/index.js!../../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-7bbc2fa6\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../../node_modules/sass-loader/lib/loader.js!../../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./user_profile2.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 902:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "/*user section*/\n.user_section[data-v-7bbc2fa6] {\n  height: 150px;\n  /*background-color:#f3f6f9;*/\n  padding: 15px 20px;\n}\n.user_section .img-wrapper[data-v-7bbc2fa6] {\n    width: 100px;\n    border-radius: 50%;\n    padding: 7px;\n    margin: auto;\n}\n.user_section img[data-v-7bbc2fa6] {\n    width: 84px;\n    border: 2px solid #ccc;\n}\n.user_section p[data-v-7bbc2fa6] {\n    font-size: 15px;\n}\n.user_section .leftuser_icons .logout_padd[data-v-7bbc2fa6] {\n    padding: 1px !important;\n}\n.user_name_max[data-v-7bbc2fa6] {\n  text-transform: uppercase;\n  font-weight: 700;\n  max-width: 210px;\n  white-space: nowrap;\n  overflow: hidden !important;\n  text-overflow: ellipsis;\n  margin: 0 0 -4px;\n  padding-top: 2px;\n  padding-bottom: 5px;\n}\n.leftuser_icons div[data-v-7bbc2fa6] {\n  cursor: pointer;\n  padding: 1px 12px;\n  font-size: 18px;\n  background-color: transparent;\n  margin-right: 3px;\n  border-radius: 50px;\n  margin: auto;\n  width: 100%;\n  display: inline;\n}\n.user_name_max[data-v-7bbc2fa6],\n.leftuser_icons i[data-v-7bbc2fa6] {\n  color: #3e6174;\n}\n", ""]);

// exports


/***/ }),

/***/ 903:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", [
    _c("div", { staticClass: "user_section" }, [
      _c("div", { staticClass: "row" }, [
        _c("div", { staticClass: "col-12" }, [
          _c("div", { staticClass: "img-wrapper" }, [
            _c("img", {
              staticClass: "rounded-circle",
              attrs: {
                src: this.$store.state.user.picture,
                alt: "user not found"
              }
            })
          ]),
          _vm._v(" "),
          _c("p", { staticClass: "mt-2 mb-1 user_name_max text-center" }, [
            _vm._v(_vm._s(this.$store.state.user.name))
          ])
        ])
      ])
    ])
  ])
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-7bbc2fa6", module.exports)
  }
}

/***/ }),

/***/ 904:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var menu_items = [{
    name: 'Dashboard',
    link: '/',
    icon: 'fa fa-home'
}, {
    name: 'Budget',
    icon: 'fa fa-calendar',
    child: [{
        name: 'Management',
        link: '/budget',
        icon: 'fa fa-angle-double-right'
    }, {
        name: 'Report',
        link: '/budget_report',
        icon: 'fa fa-angle-double-right'
    }]
}, {
    name: 'Voucher',
    icon: 'fa fa-clone',
    child: [{
        name: 'Add Voucher',
        link: '/voucher_add',
        icon: 'fa fa-angle-double-right'
    }, {
        name: 'Voucher List',
        link: '/voucher_list',
        icon: 'fa fa-angle-double-right'
    }, {
        name: 'Yearly Report',
        link: '/voucher_report',
        icon: 'fa fa-angle-double-right'
    }]
}, {
    name: 'Order',
    link: '/order_list',
    icon: 'fa fa-first-order'
}];
/* harmony default export */ __webpack_exports__["a"] = (menu_items);

/***/ }),

/***/ 905:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("aside", { staticClass: "left-aside sidebar-offcanvas" }, [
    _c("section", { staticClass: "sidebar" }, [
      _c(
        "div",
        { attrs: { id: "menu", role: "navigation" } },
        [
          _c("div", { staticClass: "nav_profile" }, [_c("profile")], 1),
          _vm._v(" "),
          _c(
            "vmenu",
            [
              _vm._l(_vm.menuitems, function(item) {
                return [
                  item.title
                    ? _c("li", { staticClass: "divider mt-3 " }, [
                        _c("span", [_vm._v(_vm._s(item.name))])
                      ])
                    : _vm._e(),
                  _vm._v(" "),
                  item.child
                    ? _c(
                        "vsub-menu",
                        { attrs: { title: item.name, icon: item.icon } },
                        _vm._l(item.child, function(child) {
                          return _c(
                            "vmenu-item",
                            {
                              key: child.name,
                              attrs: { link: child.link, icon: child.icon }
                            },
                            [_vm._v(_vm._s(child.name))]
                          )
                        })
                      )
                    : _vm._e(),
                  _vm._v(" "),
                  item.link
                    ? _c(
                        "vmenu-item",
                        { attrs: { link: item.link, icon: item.icon } },
                        [_vm._v(_vm._s(item.name) + "\n                    ")]
                      )
                    : _vm._e()
                ]
              })
            ],
            2
          )
        ],
        1
      )
    ])
  ])
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-1343de30", module.exports)
  }
}

/***/ }),

/***/ 906:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(907)
  __webpack_require__(909)
}
var normalizeComponent = __webpack_require__(46)
/* script */
var __vue_script__ = __webpack_require__(911)
/* template */
var __vue_template__ = __webpack_require__(913)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-b1888d3c"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\components\\layouts\\header\\fixed-header.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-b1888d3c", Component.options)
  } else {
    hotAPI.reload("data-v-b1888d3c", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 907:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(908);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("5afc333a", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-b1888d3c\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/sass-loader/lib/loader.js!../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./fixed-header.vue", function() {
     var newContent = require("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-b1888d3c\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/sass-loader/lib/loader.js!../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=0&bustCache!./fixed-header.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 908:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.header[data-v-b1888d3c] {\n  z-index: 1030;\n}\n.header nav[data-v-b1888d3c] {\n    margin-bottom: 0;\n    height: 50px;\n    background: #fff;\n    background-size: 100% 100%;\n    -webkit-box-shadow: 0px 0px 10px #ccc;\n            box-shadow: 0px 0px 10px #ccc;\n}\n.header .navbar-right[data-v-b1888d3c] {\n    float: right;\n    margin-right: 15px;\n}\n.header .logo[data-v-b1888d3c] {\n    display: block;\n    float: left;\n    height: 50px;\n    line-height: 41px;\n    padding: 3px 10px;\n    text-align: center;\n    width: 250px;\n    background: #fff;\n}\n.header .logo img[data-v-b1888d3c] {\n      width: 125px;\n}\n.header .navbar-right .dropdown-item[data-v-b1888d3c] {\n    padding: 0;\n    width: 100%;\n    outline: none;\n}\n.header .navbar-right div.dropdown > a[data-v-b1888d3c] {\n    color: #000;\n}\n.header .navbar-right div.dropdown .dropdown-menu > button[data-v-b1888d3c] {\n    padding: 10px 15px;\n}\n.header .navbar-right div.dropdown.notifications-menu[data-v-b1888d3c] {\n    height: 50px;\n}\n.header .navbar-right div.dropdown.notifications-menu .noti-icon[data-v-b1888d3c] {\n      font-size: 18px;\n}\n.header .navbar-right div.dropdown > a > i[data-v-b1888d3c] {\n    font-size: 23px;\n}\n.header .navbar-right div.dropdown > a[data-v-b1888d3c] {\n    display: block;\n    padding: 12px;\n}\n.header .navbar-right div.dropdown:hover > a[data-v-b1888d3c] {\n    background-color: #ededed;\n    color: #000;\n}\n.header .navbar-right div.dropdown > a.padding-user[data-v-b1888d3c] {\n    padding-top: 8px;\n    padding-bottom: 6px;\n}\n.header nav .sidebar-toggle[data-v-b1888d3c] {\n    float: left;\n    color: #000;\n    font-size: 19px;\n    padding-top: 10px;\n}\n.user_name_max[data-v-b1888d3c] {\n  display: inline-block;\n  max-width: 180px;\n  white-space: nowrap;\n  overflow: hidden !important;\n  text-overflow: ellipsis;\n  margin: 0 0 -4px;\n}\n.noti_msg[data-v-b1888d3c] {\n  font-size: 16px;\n  padding: 10px;\n  border: 1px solid #4f90c1;\n  border-radius: 50px;\n  margin-top: 10px;\n}\n.user.user-menu > button img[data-v-b1888d3c] {\n  width: 35px;\n  height: 35px;\n}\n\n/**** END HEADER RIGHT SIDE DROPDOWNS ****/\n@media screen and (max-width: 767px) {\n.dropdown.open .dropdown-menu[data-v-b1888d3c] {\n    position: absolute;\n}\n.navbar-right > li > a[data-v-b1888d3c] {\n    padding: 10px 12px;\n}\n}\n\n/* Fix menu positions on xs screens to appear correctly and fully */\n@media (max-width: 560px) {\nbody .header .logo[data-v-b1888d3c],\n  body .header nav[data-v-b1888d3c] {\n    width: 100%;\n}\nbody .header nav .sidebar-toggle[data-v-b1888d3c] {\n    padding-left: 15px;\n}\nnav[data-v-b1888d3c] {\n    height: 100px !important;\n}\n}\n.notifications_badge_top[data-v-b1888d3c] {\n  margin-top: -28px;\n  margin-left: 10px;\n  position: absolute;\n}\n.notifications_badge_top span[data-v-b1888d3c] {\n    top: 1px;\n    left: 2px;\n    border-radius: 50%;\n}\n.notifications-menu .dropdown-item[data-v-b1888d3c] {\n  width: 100%;\n  display: block;\n}\n.dropdown-footer[data-v-b1888d3c] {\n  padding: 10px !important;\n}\n", ""]);

// exports


/***/ }),

/***/ 909:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(910);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(34)("3e7148db", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-b1888d3c\",\"scoped\":false,\"hasInlineConfig\":true}!../../../../node_modules/sass-loader/lib/loader.js!../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=1&bustCache!./fixed-header.vue", function() {
     var newContent = require("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-b1888d3c\",\"scoped\":false,\"hasInlineConfig\":true}!../../../../node_modules/sass-loader/lib/loader.js!../../../../node_modules/vue-loader/lib/selector.js?type=styles&index=1&bustCache!./fixed-header.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 910:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "\n.wrapper {\n  margin-top: 50px;\n}\n@media screen and (max-width: 560px) {\n.wrapper {\n      margin-top: 100px;\n}\n}\n.sidebar-toggle {\n  margin-left: 10px;\n}\n.bell_bg button.btn-secondary {\n  background-color: #fff;\n  border: none;\n  border-radius: 0;\n  -webkit-box-shadow: none !important;\n          box-shadow: none !important;\n}\n.bell_bg button.btn-secondary:hover {\n    background-color: #ededed !important;\n}\n.bell_bg button.btn-secondary:active {\n    color: #000 !important;\n}\n.bell_bg.show button {\n  background-color: #edede !important;\n}\n.bell_bg.user_btn .dropdown-toggle {\n  padding: 7px 9px;\n}\n.tabs_cont,\n.event_date {\n  background-color: #fff !important;\n}\n", ""]);

// exports


/***/ }),

/***/ 911:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_screenfull__ = __webpack_require__(912);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_screenfull___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_screenfull__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//


/* harmony default export */ __webpack_exports__["default"] = ({
    name: "vueadmin_header",

    methods: {
        toggle_menu: function toggle_menu() {
            this.$store.commit('left_menu', "toggle");
        },
        fullscreen: function fullscreen() {
            if (__WEBPACK_IMPORTED_MODULE_0_screenfull___default.a.enabled) {
                __WEBPACK_IMPORTED_MODULE_0_screenfull___default.a.toggle();
            }
        }
    }
});

/***/ }),

/***/ 912:
/***/ (function(module, exports) {

/*!
* screenfull
* v3.3.2 - 2017-10-27
* (c) Sindre Sorhus; MIT License
*/
(function () {
	'use strict';

	var document = typeof window !== 'undefined' && typeof window.document !== 'undefined' ? window.document : {};
	var isCommonjs = typeof module !== 'undefined' && module.exports;
	var keyboardAllowed = typeof Element !== 'undefined' && 'ALLOW_KEYBOARD_INPUT' in Element;

	var fn = (function () {
		var val;

		var fnMap = [
			[
				'requestFullscreen',
				'exitFullscreen',
				'fullscreenElement',
				'fullscreenEnabled',
				'fullscreenchange',
				'fullscreenerror'
			],
			// New WebKit
			[
				'webkitRequestFullscreen',
				'webkitExitFullscreen',
				'webkitFullscreenElement',
				'webkitFullscreenEnabled',
				'webkitfullscreenchange',
				'webkitfullscreenerror'

			],
			// Old WebKit (Safari 5.1)
			[
				'webkitRequestFullScreen',
				'webkitCancelFullScreen',
				'webkitCurrentFullScreenElement',
				'webkitCancelFullScreen',
				'webkitfullscreenchange',
				'webkitfullscreenerror'

			],
			[
				'mozRequestFullScreen',
				'mozCancelFullScreen',
				'mozFullScreenElement',
				'mozFullScreenEnabled',
				'mozfullscreenchange',
				'mozfullscreenerror'
			],
			[
				'msRequestFullscreen',
				'msExitFullscreen',
				'msFullscreenElement',
				'msFullscreenEnabled',
				'MSFullscreenChange',
				'MSFullscreenError'
			]
		];

		var i = 0;
		var l = fnMap.length;
		var ret = {};

		for (; i < l; i++) {
			val = fnMap[i];
			if (val && val[1] in document) {
				for (i = 0; i < val.length; i++) {
					ret[fnMap[0][i]] = val[i];
				}
				return ret;
			}
		}

		return false;
	})();

	var eventNameMap = {
		change: fn.fullscreenchange,
		error: fn.fullscreenerror
	};

	var screenfull = {
		request: function (elem) {
			var request = fn.requestFullscreen;

			elem = elem || document.documentElement;

			// Work around Safari 5.1 bug: reports support for
			// keyboard in fullscreen even though it doesn't.
			// Browser sniffing, since the alternative with
			// setTimeout is even worse.
			if (/ Version\/5\.1(?:\.\d+)? Safari\//.test(navigator.userAgent)) {
				elem[request]();
			} else {
				elem[request](keyboardAllowed && Element.ALLOW_KEYBOARD_INPUT);
			}
		},
		exit: function () {
			document[fn.exitFullscreen]();
		},
		toggle: function (elem) {
			if (this.isFullscreen) {
				this.exit();
			} else {
				this.request(elem);
			}
		},
		onchange: function (callback) {
			this.on('change', callback);
		},
		onerror: function (callback) {
			this.on('error', callback);
		},
		on: function (event, callback) {
			var eventName = eventNameMap[event];
			if (eventName) {
				document.addEventListener(eventName, callback, false);
			}
		},
		off: function (event, callback) {
			var eventName = eventNameMap[event];
			if (eventName) {
				document.removeEventListener(eventName, callback, false);
			}
		},
		raw: fn
	};

	if (!fn) {
		if (isCommonjs) {
			module.exports = false;
		} else {
			window.screenfull = false;
		}

		return;
	}

	Object.defineProperties(screenfull, {
		isFullscreen: {
			get: function () {
				return Boolean(document[fn.fullscreenElement]);
			}
		},
		element: {
			enumerable: true,
			get: function () {
				return document[fn.fullscreenElement];
			}
		},
		enabled: {
			enumerable: true,
			get: function () {
				// Coerce to boolean in case of old WebKit
				return Boolean(document[fn.fullscreenEnabled]);
			}
		}
	});

	if (isCommonjs) {
		module.exports = screenfull;
	} else {
		window.screenfull = screenfull;
	}
})();


/***/ }),

/***/ 913:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("header", { staticClass: "header fixed-top" }, [
    _c(
      "nav",
      [
        _c("router-link", { staticClass: "logo", attrs: { to: "/" } }, [
          _c("img", {
            attrs: { src: __webpack_require__(756), alt: "logo" }
          })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "float-left" }, [
          _c(
            "a",
            {
              staticClass: "sidebar-toggle",
              attrs: { href: "javascript:void(0)" },
              on: { click: _vm.toggle_menu }
            },
            [_c("i", { staticClass: "fa fa-bars" })]
          )
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "navbar-right" }, [
          _c(
            "div",
            [
              _vm.fullscreen
                ? _c(
                    "div",
                    {
                      staticClass:
                        "dropdown hidden-xs-down btn-group fullscreen"
                    },
                    [
                      _c(
                        "a",
                        {
                          attrs: { href: "javascript:void(0)" },
                          on: { click: _vm.fullscreen }
                        },
                        [_c("i", { staticClass: "fa fa-arrows-alt" })]
                      )
                    ]
                  )
                : _vm._e(),
              _vm._v(" "),
              _c(
                "b-dropdown",
                {
                  staticClass: "notifications-menu bell_bg",
                  attrs: { right: "", link: "" }
                },
                [
                  _c("span", { attrs: { slot: "text" }, slot: "text" }, [
                    _c("i", { staticClass: "fa fa-bell-o noti-icon" }),
                    _vm._v(" "),
                    _c("div", { staticClass: "notifications_badge_top" }, [
                      _c("span", { staticClass: "badge badge-danger" }, [
                        _vm._v("4\n                            ")
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _c(
                    "b-dropdown-item",
                    {
                      staticClass: "dropdownheader socio-tabs1",
                      attrs: { exact: "" }
                    },
                    [
                      _c(
                        "b-tabs",
                        [
                          _c(
                            "b-tab",
                            {
                              staticClass: "tabs_cont",
                              attrs: { title: "Notifications", active: "" }
                            },
                            [
                              _c("b-dropdown-item", { attrs: { exact: "" } }, [
                                _c("div", { staticClass: "row" }, [
                                  _c(
                                    "div",
                                    { staticClass: "col-2 mt-2 ml-2" },
                                    [
                                      _c("img", {
                                        staticClass: "rounded-circle",
                                        attrs: {
                                          src: __webpack_require__(914)
                                        }
                                      })
                                    ]
                                  ),
                                  _vm._v(" "),
                                  _c("div", { staticClass: "col-9 mt-2" }, [
                                    _c("p", [
                                      _vm._v(
                                        "  Lorem ipsum dolor sit amet, elit.\n                                                "
                                      ),
                                      _c("br"),
                                      _vm._v(" "),
                                      _c(
                                        "small",
                                        { staticClass: "ml-1 text-info" },
                                        [_vm._v("Today ")]
                                      )
                                    ])
                                  ])
                                ])
                              ]),
                              _vm._v(" "),
                              _c("b-dropdown-item", { attrs: { exact: "" } }, [
                                _c("div", { staticClass: "row" }, [
                                  _c(
                                    "div",
                                    { staticClass: "col-2 mt-2 ml-2" },
                                    [
                                      _c("img", {
                                        staticClass: "rounded-circle",
                                        attrs: {
                                          src: __webpack_require__(915)
                                        }
                                      })
                                    ]
                                  ),
                                  _vm._v(" "),
                                  _c("div", { staticClass: "col-9 mt-2" }, [
                                    _c("p", [
                                      _vm._v(
                                        "  Lorem ipsum dolor sit amet, elit.\n                                                "
                                      ),
                                      _c("br"),
                                      _vm._v(" "),
                                      _c(
                                        "small",
                                        { staticClass: "ml-1 text-muted" },
                                        [_vm._v("week ago")]
                                      )
                                    ])
                                  ])
                                ])
                              ]),
                              _vm._v(" "),
                              _c("b-dropdown-item", { attrs: { exact: "" } }, [
                                _c("div", { staticClass: "row" }, [
                                  _c(
                                    "div",
                                    { staticClass: "col-2 mt-2 ml-2" },
                                    [
                                      _c("img", {
                                        staticClass: "rounded-circle",
                                        attrs: {
                                          src: __webpack_require__(824)
                                        }
                                      })
                                    ]
                                  ),
                                  _vm._v(" "),
                                  _c("div", { staticClass: "col-9 mt-2" }, [
                                    _c("p", [
                                      _vm._v(
                                        "  Lorem ipsum dolor sit amet, elit.\n                                                "
                                      ),
                                      _c("br"),
                                      _vm._v(" "),
                                      _c(
                                        "small",
                                        { staticClass: "ml-1 text-muted" },
                                        [_vm._v("month ago")]
                                      )
                                    ])
                                  ])
                                ])
                              ]),
                              _vm._v(" "),
                              _c(
                                "b-dropdown-item",
                                {
                                  staticClass: "mt-2 notifications_data",
                                  attrs: { exact: "" }
                                },
                                [
                                  _c("div", { staticClass: "row" }, [
                                    _c(
                                      "div",
                                      { staticClass: "col-2 mt-2 ml-2" },
                                      [
                                        _c("img", {
                                          staticClass: "rounded-circle",
                                          attrs: {
                                            src: __webpack_require__(824)
                                          }
                                        })
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c("div", { staticClass: "col-9 mt-2" }, [
                                      _c("p", [
                                        _vm._v(
                                          "  Lorem ipsum dolor sit amet, elit.\n                                                "
                                        ),
                                        _c("br"),
                                        _vm._v(" "),
                                        _c(
                                          "small",
                                          { staticClass: "ml-1 text-muted" },
                                          [_vm._v("2 months ago")]
                                        )
                                      ])
                                    ])
                                  ])
                                ]
                              ),
                              _vm._v(" "),
                              _c(
                                "b-dropdown-item",
                                {
                                  staticClass: "dropdown-footer ",
                                  attrs: { exact: "" }
                                },
                                [
                                  _c("div", [
                                    _c("strong", [_vm._v("View all")])
                                  ])
                                ]
                              )
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c(
                            "b-tab",
                            {
                              staticClass: "event_date",
                              attrs: { title: "Events" }
                            },
                            [
                              _c(
                                "b-dropdown-item",
                                {
                                  staticClass: "notifications_data",
                                  attrs: { exact: "" }
                                },
                                [
                                  _c("div", { staticClass: "noti_item" }, [
                                    _c("div", { staticClass: "row" }, [
                                      _c(
                                        "div",
                                        { staticClass: "col-2   ml-3" },
                                        [
                                          _c("i", {
                                            staticClass:
                                              "fa fa-calendar text-info noti_msg"
                                          })
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c("div", { staticClass: "col-9 mt-1" }, [
                                        _c("span", [
                                          _vm._v("New Lorem Event from john.")
                                        ]),
                                        _vm._v(" "),
                                        _c("br"),
                                        _vm._v(" "),
                                        _c(
                                          "span",
                                          { staticClass: "text-muted" },
                                          [_vm._v("Apr 29th 2017")]
                                        )
                                      ])
                                    ])
                                  ])
                                ]
                              ),
                              _vm._v(" "),
                              _c(
                                "b-dropdown-item",
                                {
                                  staticClass: "notifications_data",
                                  attrs: { exact: "" }
                                },
                                [
                                  _c("div", { staticClass: "row" }, [
                                    _c("div", { staticClass: "col-2 ml-3" }, [
                                      _c("i", {
                                        staticClass:
                                          "fa fa-calendar text-info noti_msg"
                                      })
                                    ]),
                                    _vm._v(" "),
                                    _c("div", { staticClass: "col-9 mt-1" }, [
                                      _c("span", [
                                        _vm._v("New Lorem Event from john.")
                                      ]),
                                      _vm._v(" "),
                                      _c("br"),
                                      _vm._v(" "),
                                      _c(
                                        "span",
                                        { staticClass: "text-muted" },
                                        [_vm._v("Apr 29th 2017")]
                                      )
                                    ])
                                  ])
                                ]
                              ),
                              _vm._v(" "),
                              _c(
                                "b-dropdown-item",
                                {
                                  staticClass: "notifications_data",
                                  attrs: { exact: "" }
                                },
                                [
                                  _c("div", { staticClass: "row" }, [
                                    _c(
                                      "div",
                                      { staticClass: "col-2 ml-3 mb-2" },
                                      [
                                        _c("i", {
                                          staticClass:
                                            "fa fa-calendar text-info noti_msg"
                                        })
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c("div", { staticClass: "col-9 mt-1" }, [
                                      _c("span", [
                                        _vm._v("New Lorem Event from john.")
                                      ]),
                                      _vm._v(" "),
                                      _c("br"),
                                      _vm._v(" "),
                                      _c(
                                        "span",
                                        { staticClass: "text-muted" },
                                        [_vm._v("Apr 29th 2017")]
                                      )
                                    ])
                                  ])
                                ]
                              ),
                              _vm._v(" "),
                              _c(
                                "b-dropdown-item",
                                { staticClass: "dropdown-footer" },
                                [
                                  _c("div", [
                                    _c("strong", [_vm._v("View all")])
                                  ])
                                ]
                              )
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c("b-tab", {
                            attrs: { title: "Updates", disabled: "" }
                          })
                        ],
                        1
                      )
                    ],
                    1
                  )
                ],
                1
              ),
              _vm._v(" "),
              _c(
                "b-dropdown",
                {
                  staticClass: "user user-menu bell_bg user_btn",
                  attrs: { right: "", link: "" }
                },
                [
                  _c("span", { attrs: { slot: "text" }, slot: "text" }, [
                    _c("img", {
                      staticClass: "rounded-circle",
                      attrs: {
                        src: this.$store.state.user.picture,
                        alt: "User Image"
                      }
                    }),
                    _vm._v(" "),
                    _c("p", { staticClass: "user_name_max" }, [
                      _vm._v(_vm._s(this.$store.state.user.name))
                    ])
                  ]),
                  _vm._v(" "),
                  _c(
                    "b-dropdown-item",
                    { staticClass: "dropdown_content", attrs: { exact: "" } },
                    [
                      _c(
                        "router-link",
                        {
                          staticClass: "drpodowtext",
                          attrs: { to: "/login", exact: "" }
                        },
                        [
                          _c("i", { staticClass: "fa fa-sign-out" }),
                          _vm._v(" Logout\n                        ")
                        ]
                      )
                    ],
                    1
                  )
                ],
                1
              )
            ],
            1
          )
        ])
      ],
      1
    )
  ])
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-b1888d3c", module.exports)
  }
}

/***/ }),

/***/ 914:
/***/ (function(module, exports) {

module.exports = "/images/avatar1.jpg?2d4968bd8ec1519b0535ba849643dd1c";

/***/ }),

/***/ 915:
/***/ (function(module, exports) {

module.exports = "/images/avatar5.jpg?83fc5fdfbe37fb37db7a2fe84cca6d6d";

/***/ }),

/***/ 916:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(917);
if(typeof content === 'string') content = [[module.i, content, '']];
// Prepare cssTransformation
var transform;

var options = {}
options.transform = transform
// add the styles to the DOM
var update = __webpack_require__(781)(content, options);
if(content.locals) module.exports = content.locals;
// Hot Module Replacement
if(false) {
	// When the styles change, update the <style> tags
	if(!content.locals) {
		module.hot.accept("!!../../../node_modules/css-loader/index.js!../../../node_modules/sass-loader/lib/loader.js!./custom.scss", function() {
			var newContent = require("!!../../../node_modules/css-loader/index.js!../../../node_modules/sass-loader/lib/loader.js!./custom.scss");
			if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
			update(newContent);
		});
	}
	// When the module is disposed, remove the <style> tags
	module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 917:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "/*\nCreated by: Jyostna Designs\n\n[TABLE OF CONTENTS]\n\n1.  RESET STYLES\n2.  HEADER STYLES\n    2.1 HEADER LEFT\n    2.2 HEADER RIGHT SIDE DROPDOWNS\n3. LEFT SIDEBAR\n4. MAIN WRAPPER STYLES\n5. LEFT MENU COLLAPSE STYLES\n6. CUSTOM STYLES\n7. MEDIA QUERIES\n\n*/\n/*===import bootstrap variables===*/\n.badge {\n  color: #fff; }\n\n/*****  1.RESET STYLES  *****/\nhtml {\n  background: none repeat scroll 0 0 #fff;\n  overflow-x: hidden;\n  transition: all .25s ease-out;\n  font-size: small; }\n\nhtml,\nbutton,\ninput,\noptgroup,\nselect,\ntextarea {\n  font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; }\n\nbody {\n  background: none repeat scroll 0 0 #fff;\n  overflow-x: hidden;\n  transition: all .25s ease-out;\n  font-size: small;\n  letter-spacing: 0.5px;\n  width: 100%;\n  margin: 0 auto; }\n\nbody,\n#app,\n#app > div,\n#app div.wrapper {\n  min-height: calc(100vh - 102px); }\n\nul {\n  list-style: none; }\n\nlabel {\n  font-weight: 400;\n  font-size: 14px;\n  letter-spacing: 1px; }\n\na:hover,\na {\n  text-decoration: none !important; }\n\n.table > thead > tr > th,\n.table > thead > tr > td,\n.table > tbody > tr > th,\n.table > tbody > tr > td,\n.table > tfoot > tr > th,\n.table > tfoot > tr > td {\n  vertical-align: middle; }\n\n/**Dropdown menus**/\n.dropdown-menu {\n  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);\n  z-index: 2300;\n  margin-top: 0;\n  border: none;\n  outline: none; }\n\n/*********6. CUSTOM STYLES *********/\n.submenu-content .name {\n  vertical-align: text-top !important; }\n\n/*text-area resize*/\n.resize_vertical {\n  resize: vertical; }\n\nh4.card-header {\n  font-size: 16px; }\n\n.card {\n  margin-bottom: 25px; }\n\n/**************card bg colors*******************/\n.bg-primary-card {\n  border: 1px solid #337ab7; }\n  .bg-primary-card > .card-header {\n    background-color: #337ab7;\n    color: #fff; }\n\n.bg-info-card {\n  border: 1px solid #4fc1e9; }\n  .bg-info-card > .card-header {\n    background-color: #4fc1e9;\n    color: #fff; }\n\n.bg-warning-card {\n  border: 1px solid #fea115; }\n  .bg-warning-card > .card-header {\n    background-color: #fea115;\n    color: #fff; }\n\n.bg-danger-card {\n  border: 1px solid #fd7570; }\n  .bg-danger-card > .card-header {\n    background-color: #fd7570;\n    color: #fff; }\n\n.bg-success-card {\n  border: 1px solid #16af81; }\n  .bg-success-card > .card-header {\n    background-color: #16af81;\n    color: #fff; }\n\n.bg-primary-card:hover,\n.bg-info-card:hover,\n.bg-danger-card:hover,\n.bg-warning-card:hover,\n.bg-success-card:hover,\n.card:hover {\n  box-shadow: 1px 1px 38px -8px #8e8c8e; }\n\n.btn-link,\n.btn {\n  cursor: pointer; }\n\n/*=======hide unwanted content in print======*/\n@media print {\n  header.header,\n  aside.left-aside,\n  section.content-header,\n  #scroll {\n    display: none !important; }\n  .table-responsive {\n    display: inline-table;\n    width: 100%; } }\n\n/*=======hide unwanted content in print======*/\n/*============header styles=======*/\nheader .navbar-right .dropdown-menu {\n  padding: 0; }\n\nheader .navbar-right .dropdownheader .nav.nav-tabs,\nheader .navbar-right .dropdown-footer,\nheader .navbar-right .dropdownheader:hover .nav.nav-tabs,\nheader .navbar-right .dropdown-footer:hover {\n  background: #fff;\n  color: #000;\n  border: 1px solid #ccc; }\n\nheader .navbar-right .show > .btn-secondary.dropdown-toggle {\n  background-color: #EEEEEE;\n  color: #000;\n  border-color: #EEEEEE; }\n\nheader .navbar-right .btn-link:focus,\nheader .navbar-right .btn-link:hover,\nheader .navbar-right .btn-link:active {\n  text-decoration: none; }\n\nheader .navbar-right .btn .btn:active {\n  border: none; }\n\nheader .navbar-right .btn-group > button {\n  vertical-align: top;\n  color: #000; }\n  header .navbar-right .btn-group > button:hover {\n    background-color: #ededed;\n    color: #000; }\n\n@media (max-width: 560px) {\n  .notifications-menu .dropdown-menu.dropdown-menu-right {\n    right: -123px; } }\n\n.notifications-menu .dropdown-menu {\n  width: 300px; }\n\n.dropdownheader .nav-tabs .nav-link {\n  color: #000; }\n\n.dropdown-menu .nav-tabs .nav-link:focus,\n.dropdown-menu .nav-tabs .nav-link:hover {\n  border-color: transparent; }\n\n.dropdown-menu .nav-tabs .nav-link.active,\n.dropdown-menu .nav-tabs .nav-item.show .nav-link {\n  color: #000;\n  background-color: #eee;\n  border-left: 1px transparent;\n  border-right: 1px transparent;\n  border-top: 1px transparent; }\n\n.nav-tabs > li > a {\n  color: #000; }\n\n.drpodowtext {\n  color: #333;\n  transition: 300ms; }\n\n.drpodowtext:hover {\n  margin-left: 12px;\n  transition: 300ms; }\n\n.dropdown_content a {\n  width: 100%;\n  display: block;\n  padding: 10px 15px; }\n\n.dropdown-item img {\n  height: 50px;\n  width: 50px; }\n\n.dropdown-item.active,\n.dropdown-item:active {\n  color: #111;\n  text-decoration: none;\n  background-color: transparent; }\n\n.btn-secondary:focus,\n.btn-secondary.focus {\n  box-shadow: none; }\n\n.dropdown-toggle::after {\n  display: none; }\n\n/*============header styles=======*/\n/*====================form editors Start============*/\n.ql-container .ql-editor {\n  min-height: 20em;\n  padding-bottom: 1em;\n  max-height: 25em; }\n\n.nav-tabs:focus {\n  outline: none; }\n\n/*====================form editors end============*/\n/*=========calendar========*/\n.full-calendar-body .dates .dates-events .events-week .events-day {\n  min-height: 100px !important; }\n\n.full-calendar-header > div.header-center {\n  font-size: 18px; }\n\n/*=========calendar========*/\n/*======chartist=====*/\n.ct-series-a .ct-line,\n.ct-series-a .ct-point {\n  stroke: #8dcee4 !important; }\n\n.ct-series-b .ct-line,\n.ct-series-b .ct-point {\n  stroke: #4fc1e9 !important; }\n\n.ct-series-c .ct-line,\n.ct-series-c .ct-point {\n  stroke: #16AF81 !important; }\n\n.ct-series-d .ct-line,\n.ct-series-d .ct-point {\n  stroke: #8dcee4 !important; }\n\n/*======chartist bars=====*/\n.ct-series-a .ct-bar {\n  /* Colour of your bars */\n  stroke: #97d9ef !important; }\n\n.ct-series-b .ct-bar {\n  /* Colour of your bars */\n  stroke: #4fc1e9 !important; }\n\n.ct-label {\n  font-size: 10px;\n  color: #000; }\n\n/*======pie chart=====*/\n.ct-series-a .ct-slice-pie {\n  fill: #7faff7 !important; }\n\n.ct-series-b .ct-slice-pie {\n  fill: #6f8dd5 !important; }\n\n.ct-series-c .ct-slice-pie {\n  fill: #11bca9 !important; }\n\n.v-chartist-container {\n  height: 300px; }\n\n/*====== donut chart=====*/\n.ct-series-a .ct-slice-donut {\n  stroke: #11bca9 !important; }\n\n.ct-series-a .ct-slice-donut {\n  stroke: #6f8dd5 !important; }\n\n.ct-series-a .ct-slice-donut {\n  stroke: #7faff7 !important; }\n\n.ct-series-c .ct-slice-donut {\n  stroke: #11bca9 !important; }\n\n.ct-series-b .ct-slice-donut {\n  stroke: #6f8dd5 !important; }\n\n/*=======form-elements======*/\n.drp_align .dropdown-menu {\n  left: -100%; }\n\n.form_elemntsdropdown .dropdown-item {\n  padding: 10px 15px; }\n\n/*=======form-elements======*/\n/*========breadcrumbs====*/\n.breadcrumb1 > .breadcrumb-item + .breadcrumb-item::before {\n  content: \"\\BB\"; }\n\n.breadcrumb2 > .breadcrumb-item + .breadcrumb-item::before {\n  content: \"\\203A\" !important; }\n\n.breadcrumb3 > .breadcrumb-item + .breadcrumb-item::before {\n  content: \"\\2013   \"; }\n\n/*========breadcrumbs====*/\n/*==========datepickers=========*/\n.vdp-datepicker input,\n.vdp-datepicker select {\n  padding: .75em .5em;\n  font-size: 100%;\n  border: 1px solid #dcdccc;\n  width: 100%; }\n\n@media (max-width: 768px) {\n  .vdp-datepicker__calendar {\n    width: 100% !important; } }\n\n/*==========datepickers=========*/\n.pull-right {\n  float: right; }\n\n.car-header:first-child {\n  border: none !important; }\n", ""]);

// exports


/***/ }),

/***/ 918:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(919);
if(typeof content === 'string') content = [[module.i, content, '']];
// Prepare cssTransformation
var transform;

var options = {}
options.transform = transform
// add the styles to the DOM
var update = __webpack_require__(781)(content, options);
if(content.locals) module.exports = content.locals;
// Hot Module Replacement
if(false) {
	// When the styles change, update the <style> tags
	if(!content.locals) {
		module.hot.accept("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/sass-loader/lib/loader.js!./fixed-menu.scss", function() {
			var newContent = require("!!../../../../node_modules/css-loader/index.js!../../../../node_modules/sass-loader/lib/loader.js!./fixed-menu.scss");
			if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
			update(newContent);
		});
	}
	// When the module is disposed, remove the <style> tags
	module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 919:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(33)(undefined);
// imports


// module
exports.push([module.i, "aside.left-aside {\n  position: fixed;\n  top: 50px;\n  left: 0;\n  max-height: 100%;\n  height: calc(100% - 50px);\n  overflow-y: auto; }\n  @media screen and (max-width: 560px) {\n    aside.left-aside {\n      top: 100px;\n      height: calc(100% - 100px); } }\n\naside.right-aside {\n  display: block !important;\n  width: auto !important;\n  margin-left: 250px; }\n\nbody.left-hidden aside.right-aside {\n  margin-left: 0; }\n", ""]);

// exports


/***/ }),

/***/ 920:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    [
      _c("preloader", {
        directives: [
          {
            name: "show",
            rawName: "v-show",
            value: this.$store.state.preloader,
            expression: "this.$store.state.preloader"
          }
        ]
      }),
      _vm._v(" "),
      _c("vueadmin_header"),
      _vm._v(" "),
      _c(
        "div",
        { staticClass: "wrapper row-offcanvas" },
        [
          _c("left_side", {
            directives: [
              {
                name: "show",
                rawName: "v-show",
                value: this.$store.state.left_open,
                expression: "this.$store.state.left_open"
              }
            ]
          }),
          _vm._v(" "),
          _c("right_side", [_c("router-view")], 1)
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "div",
        {
          directives: [
            {
              name: "show",
              rawName: "v-show",
              value: this.$store.state.loading,
              expression: "this.$store.state.loading"
            }
          ],
          staticClass: "lds-spinner"
        },
        [
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div"),
          _c("div")
        ]
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-19d91730", module.exports)
  }
}

/***/ })

});