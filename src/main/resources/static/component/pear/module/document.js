layui.define(['jquery', 'element'], function(exports) {
	"use strict";

	var MOD_NAME = 'document';

	var document = function(opt) {
		this.option = opt;
	};

	exports(MOD_NAME, new document());
})
