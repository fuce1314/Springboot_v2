window.rootPath2 = (function(src) {
	src = document.scripts[document.scripts.length - 1].src;
	return src.substring(0, src.lastIndexOf("/") + 1);
})();

layui.config({
	base: rootPath2 + "module/",
	version: "3.6.8"
}).extend({
	admin: "admin",
	menu: "menu",
	frame: "frame",
	tab: "tab",
	echarts: "echarts",
	echartsTheme: "echartsTheme",
	hash: "hash",
	document: "document",
	select: "select",
	drawer: "drawer",
	notice: "notice",
	step:"step",
	tag:"tag",
	popup:"popup",
	iconPicker:"iconPicker",
	treetable:"treetable",
	dtree:"dtree",
	area:"area",
	count:"count",
	topBar: "topBar",
	button: "button",
	design: "design",
	common: "common",
	eleTree: "eleTree",
	dictionary: 'dictionary',
	json: 'json',
	cropper:"cropper",
	yaml:"yaml",
	theme: "theme",
	message: "message"		// 通知组件
}).use(['layer', 'theme'], function () {
	layui.theme.changeTheme(window, false);
});
