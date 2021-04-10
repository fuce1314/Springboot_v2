layui.define(['jquery', 'element', 'util'], function(exports) {
	"use strict";

	var MOD_NAME = 'button',
		$ = layui.jquery,
		util = layui.util,
		element = layui.element;

	var button = function(opt) {
		this.option = opt;
	};

	button.prototype.load = function(opt) {
		//默认配置值
		var option = {
			elem: opt.elem,
			time: opt.time ? opt.time : false,
			done: opt.done ? opt.done : function(){}
		}
		var load = $(option.elem).text();
		$(option.elem).html("<i class='layui-anim layui-anim-rotate layui-icon layui-anim-loop layui-icon-loading'/>");
		var buttons = $(option.elem);
		if (option.time == "") {
		} else {
			setTimeout(function() {
				buttons.html(load);
				option.done();
			}, option.time);
		}
		option.text = load;
		return new button(option);
	}
	
	button.prototype.stop = function(success) {
		$(this.option.elem).html(this.option.text);
		success();
	} 

	exports(MOD_NAME, new button());
});
