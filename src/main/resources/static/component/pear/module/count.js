layui.define(['jquery', 'element'], function(exports) {
	"use strict";

	var MOD_NAME = 'count';

	var count = new function() {

		this.up = function(targetEle, options) {

			options = options || {};

			var $this = document.getElementById(targetEle),
				time = options.time,
				finalNum = options.num,
				regulator = options.regulator,
				step = finalNum / (time / regulator),
				count = 0.00, 
				initial = 0;
				

			var timer = setInterval(function() {
				count = count + step;
				
				if (count >= finalNum) {
					clearInterval(timer);
					count = finalNum;
				}
				//t未发生改变的话就直接返回 
				//避免调用text函数，提高DOM性能 
				var t = count.toFixed(options.bit?options.bit:0);;
				
				if (t == initial) return;
				initial = t;
				$this.innerHTML = initial;
			}, 30);
		}

	}
	exports(MOD_NAME, count);
});
