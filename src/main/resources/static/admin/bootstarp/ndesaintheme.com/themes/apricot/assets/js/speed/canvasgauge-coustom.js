/*
 * canvasgauge.js
 * 
 * Copyright 2013 Pedro A. Melendez <lazy.chino@gmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


function _maxLength(str1, str2) {
	if(str1.length > str2.length) {
		return str1;
	}
	else {
		return str2;
	}
}


function __horizontal__( g ) {// updates drawing
	
	g.ctx.clearRect(0, 0, g.width, g.height); //clear canvas before drawing
	
	g.ctx.fillStyle = g.bgColor;  // draw background rectangle
	g.ctx.fillRect(0,
				0,
				g.width, 
				g.height 
				);
	
	g.ctx.fillStyle = g.color;    // draw value rectangle
	g.ctx.fillRect(0,
				0,
				(g.value-g.min)/(g.max-g.min)*(g.width-g.textMax), 
				g.height
				);
}

function __needle__( g ) {
	g.ctx.clearRect(0, 0, g.width, g.height);
	var H = g.height/2;
	var W = g.width/2;

	// draw background circle
	g.ctx.fillStyle="#FFFFFF";
	g.ctx.beginPath();
	g.ctx.arc(W, H, g.radius, 0, 2*Math.PI);
	g.ctx.fill();
	
	
	g.ctx.strokeStyle="#ffffff";
	g.ctx.lineWidth = 2;                // set line color
	g.ctx.beginPath();                          // draw border arc
	g.ctx.arc(W, H, g.radius, 2.62, 6.81);
	g.ctx.stroke();
	
	
	//draw scale
	for(var n=0; n <= g.max-g.min; n+=10) {
		var scale = n/g.resolution;
		var rad = (-1*scale+300.23)*Math.PI/180;
		g.ctx.beginPath();
		g.ctx.moveTo(Math.sin(rad)*g.radius+W, Math.cos(rad)*g.radius+H );
		g.ctx.lineTo(Math.sin(rad)*g.radius*0.8+W, Math.cos(rad)*g.radius*0.8+H );
		g.ctx.stroke();
		g.ctx.fillStyle = "#ffffff";
		g.ctx.textAlign = "center";
		g.ctx.font = "5px Arial"; 
		g.ctx.fillText( (scale*g.resolution)+g.min, 
						Math.sin(rad)*g.radius*0.7+W, 
						Math.cos(rad)*g.radius*0.7+H
						);
	}
	
	// draw value
	var text = String( Math.round(g.value*g.precision)/g.precision );
	g.ctx.fillStyle = "#FFA200";
	g.ctx.font = "60px Open Sans";
	g.ctx.fillText( text, 
					Math.sin(0)*g.radius*0.4+W, 
					Math.cos(0)*g.radius*0.4+H
					);
	
	//draw center circle
	g.ctx.fillStyle="transparent";
	g.ctx.beginPath();
	g.ctx.arc(W, H, g.radius*0.1, 0, 2*Math.PI);
	g.ctx.fill();
	
	// draw needle
	var angle = (g.value-g.min)/(g.max-g.min)*240;
	var rad = ((-1*angle)+300.23)*Math.PI/180;
	g.ctx.strokeStyle="transparent";
	g.ctx.lineWidth = 1;
	g.ctx.beginPath();
	g.ctx.moveTo(Math.sin(rad-Math.PI)*g.radius*0.15+W,Math.cos(rad-Math.PI)*g.radius*0.15+H );
	g.ctx.lineTo(Math.sin(rad)*g.radius+W,Math.cos(rad)*g.radius+H );
	g.ctx.stroke();
}



function Gauge( id, options ) {
	
	if( options === undefined ) {
		options = Object();
	}
	
	this.canvas = document.getElementById(id);
	this.ctx = this.canvas.getContext("2d");
	
	//dimensions
	this.width = this.canvas.width;
	this.height = this.canvas.height;
	
	//Variables
	this.value = 0;
	this.newValue = 0;
	this.color = options.color ? options.color : "#f00";
	this.bgColor = options.bgColor ? options.bgColor : "#000000";
	this.textColor = options.textColor ? options.textColor : "#FFFFFF";
	this.precision = options.precision ? options.precision : Math.pow(10,0);
	this.time = options.updateTime ? options.updateTime : 400;
	
	if( options.range !== undefined ) {
		this.min = options.range.min;
		this.max = options.range.max;
	}
	else {
		this.min = 0;
		this.max = 100;
	}

	if ( options.mode === "needle" ) {
		this.resolution = (this.max - this.min)/240;
		this.radius = (Math.min(this.height, this.width)/2)*.9;
		this.update = __needle__;
	}
	else { // default "bar"
		this.resolution = (this.max - this.min)/this.width;
		this.ctx.font = String(this.height)+"px Arial";
		this.textMax = this.ctx.measureText( _maxLength( this.max.toString(), this.min.toString() ) ).width;
		this.update = __horizontal__;
	}
}

Gauge.prototype.draw = function(val) {
	
	var g = this;
	var update = this.update;

	
	function animate() {
		if( g.diff < 0 ) {
			if(g.diff-g.step > 0) {
				g.step/=10;
			}
			g.value-=g.step;
		}
		else if( g.diff > 0 ) {
			if(g.diff-g.step < 0) {
				g.step/=10;
			}
			g.value-=g.step;
		}
		else {
			clearInterval(g.animation);
			//alert("pare");
		}
		update(g);
		g.diff = g.value - g.newValue;
	}

	if(typeof this.animation != undefined) { 
		clearInterval(this.animation);	
	}
	
	if(val == null ) {
		val = 0;
	}
	
	if( val > this.max) {
		val = this.max;
	}
	else if( val < this.min) {
		val = this.min;
	}
	else{}
	
	this.newValue = val;
	
	this.diff = this.value - this.newValue;
	this.step = this.diff/1000;
	
	this.animation = setInterval(animate, this.time/1000 );
};
