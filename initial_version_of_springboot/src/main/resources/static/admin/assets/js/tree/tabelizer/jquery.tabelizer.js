/*
 * 
 * Tabelizer 1.0.3 - multi level grouping indicators for tables
 * Version 1.0.3
 * @requires jQuery v1.6+ and jQuery.ui core
 * 
 * Copyright (c) 2014 Rafael Huisman
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 */

/**
 * 
 * @description Create a table with multi level grouping indicators.
 * @demo http://powerconsulting.co/Samples/Tabelizer
 * @example $('#table1').tabelize();
 * @desc Create a simple tabelized interface.
 */

(function($){
	var self = {};
	
	self.isFunction = function(func) {
		return func && {}.toString.call(func) === '[object Function]';
	}
	
	self.rowClicker = function(evt){
	
		if (typeof self.conf.onBeforeRowClick != 'undefined' && self.isFunction(self.conf.onBeforeRowClick))
			self.conf.onBeforeRowClick.apply(self.getPublicObj(), [evt]);
		
		var $elm = $(evt.currentTarget);
		
		if (!$elm.is('tr'))
			$elm = $elm.parentsUntil('tr').parent()
		
		$row = $elm;
		
		var id = $row.attr('id');
		
		//Simple toggle for contract/expand logic
		if ($row.hasClass('contracted')){
			$row.removeClass('contracted').addClass('expanded');
			self.toggleChildren(id, true);
		}else{
			$row.removeClass('expanded').addClass('contracted');
			self.toggleChildren(id, false);
		}
		
		//After any contraction or expansion we need to resetup the lines since they will likely change.
		self.updateLines();
		
		if (typeof self.conf.onAfterRowClick != 'undefined' && self.isFunction(self.conf.onAfterRowClick))
			self.conf.onAfterRowClick.apply(self.getPublicObj(), [evt]);
			
		return self.getPublicObj();
	}
	
	self.updateLines = function(){
		//console.log('update lines' + self.maxLevel)
		var currentLevel = '';
		var prevLevel = '';
		$prevRow = null;
		//We only want to apply the lines to the non hidden children.
		self.caller.find('tr:not(.hidden):not(.hiding)').each(function(){
			$row = $(this);
			//header rows do not get included in the grouping
			if (!$row.hasClass('header')){
				currentLevel = $row.data('level');
				
				//Remove all existing first and last classes for all available levels to ensure we have a clean slate
				for(var x = self.maxLevel;x > 0;x--)
					$row.removeClass('l' + x + '-first').removeClass('l' + x + '-last')
				
				var rowClass = '';
				//We only add the grouping lines if the level has changed, this is true for the first and last lines. 
				if (currentLevel != prevLevel){
					//if the previous level is bigger than the current level then we know that we went back in the tree and the previous item is a last one, we want to mark is as the last for any level up to the current
					if (prevLevel != '' && prevLevel > currentLevel){
						for (var x = (prevLevel); x >= currentLevel; x--){
							$prevRow.addClass(' l' + (parseInt(x)) + '-last')
						}
					//If the previous level had a sibling right before it, the previous row is also a first for the previous level
					}else if (prevLevel != '' && prevLevel < currentLevel){
						$prevRow.addClass(' l' + (prevLevel) + '-first')
					}
				}
				
				$row.addClass(rowClass)
				
				prevLevel = currentLevel;
				$prevRow= $row;
			}
		});
		
		//We need to check if the last item in the grid needs a X-last class.
		if ($prevRow != null && prevLevel != '' && prevLevel > 1){
			for (var x = (prevLevel-1); x > 0; x--){
				$prevRow.addClass(' l' + (parseInt(x)) + '-last')
			}
		}
		
		return self.getPublicObj();
	}
	
	//this method toggles the children on or off, including a sliding motion
	self.toggleChildren = function(id, display, onSlideComplete){
		var startAction = false;
		var stopAction = false;
		var prevRowLevel = null;
		var startLevel = 0;
		self.caller.find('tr').each( function(){
			var $row = $(this);
			var rowId = $row.attr('id');
			var rowLevel = $row.data('level');
			var skipAction = false;
			
			if (!startAction && rowId == id){
				startAction = true;
				startLevel = rowLevel;
			}
			else if (startAction && !stopAction && prevRowLevel != null && rowLevel == (startLevel)){
				//console.log('1')
				stopAction = true;
			}else if (display && (startAction && !stopAction && prevRowLevel != null && rowLevel != (startLevel + 1))){
				skipAction = true;
			}else if (!display && (startAction && !stopAction && prevRowLevel != null && rowLevel < (startLevel))){
				//console.log('cold turkey')
				stopAction = true;
				skipAction = true;
			}
			
			
			//console.log('rowId: ' + rowId + ' perform: ' + ((!skipAction && startAction && !stopAction &&  rowId != id)) + ' skip: ' + skipAction + ' level: ' + rowLevel + ' -> ' + (startLevel))
			
			if (!skipAction && startAction && !stopAction &&  rowId != id){
				if (display){
					$row.removeClass('hidden');
					
					$row.find('td').wrapInner('<div style="display: none;" />').parent().find('td > div').slideDown(100, function(){
						var $set = $(this);
						$set.replaceWith($set.contents());
					 });
					
				}
				else{
					$row.addClass('hiding');
					$row.find('td').wrapInner('<div style="" />').parent().find('td > div').slideUp(100, function(){
						var $set = $(this);
						$set.replaceWith($set.contents());
						$row.addClass('hidden');
						$row.removeClass('hiding');
					 });
					 
					$row.removeClass('expanded')
					$row.addClass('contracted');
				}
			}
			
			prevRowLevel = rowLevel;
		});
		
		return self.getPublicObj();
	}
	
	self.updateData = function(){
		self.caller.data('tabelizer', self);
	}
	
	self.maxLevel = 0;
	self.init = function(){
	
		var currentLevel = '';
		var prevLevel = '';
		$prevRow = null;
		//we want to find all rows of the caller table to apply the base classes to them and make them expandable
		self.caller.find('tr').each( function(){
			$row = $(this);
			//don't apply any logic tot the header row
			if (!$row.hasClass('header')){
				currentLevel = $row.data('level');
			
				//initially all rows other than the first level are hidden
				var rowClass = 'l' + currentLevel + ' contracted ' + (currentLevel > 1 ? ' hidden' : '');
				
				//keep track of the highest level, this is used for the grouping lines
				if (currentLevel > self.maxLevel)
					self.maxLevel=parseInt(currentLevel);
				
				$row.addClass(rowClass)
				
				//apply labels around the first column text, so that we can add in the controls and expander image
				$firstCol = $($row.children('td')[0])
				var firstColVal = '<div class="label">' + $firstCol.html() + '</div>';
				var parentLevels = 0;
				
				//add in the line control div, add it in for every level up until your current level, this is to ensure we can show all the needed lines.
				var levelLines = '<div class="control"> ';
				for(var x = 0; x <= (currentLevel-1); x++){
					levelLines += ' <div class="line level' + (x + 1) + '"><div class="vert"></div><div class="horz"></div></div> ';
				}
				levelLines += '</div>'
				//Add the expanded class, which through css adds in the arrow image
				$firstCol.html(levelLines + ' <div class="expander"></div> ' + firstColVal);
				 
				//apply the method to be called on each row click, if fullRowClickable is set to false, then only the expander is clickable
				if (self.conf.fullRowClickable)
					$row.on('click', self.conf.onRowClick);
				else
					$row.find('.expander').on('click', self.conf.onRowClick);
				prevLevel = currentLevel;
				$prevRow= $row;
			}
		});
		
		self.updateLines();
		
		if (typeof self.conf.onReady != 'undefined' && self.isFunction(self.conf.onReady))
			self.conf.onReady.apply(self.getPublicObj(), []);
			
		return self.getPublicObj();
	}
	
	self.getPublicObj = function(){ return {
		options : self.conf,
		toggleChildren : self.toggleChildren,
		updateLines : self.updateLines,
		rowClicker : self.rowClicker,
		maxLevel : self.maxLevel,
		updateData : self.updateData
	}};
	
	self.conf = {
		onRowClick : self.rowClicker,
		fullRowClickable : true,//must be set before init
		onBeforeRowClick : null,
		onAfterRowClick : null,
		onReady : null
	};
	
	$.fn.tabelize = function(confProp){
		
		var existingSelf = this.data('tabelizer');
		if (typeof existingSelf == 'undefined'){
			$.extend(self.conf, confProp);
			self.caller = this;
			self.init();
			
		}else{
			self = existingSelf;
			$.extend(self.conf, confProp);
		}
		//Store copy of self in data for repeat calls, update it after any repeating call
		self.updateData();
		
		return self.getPublicObj()
	};
})(jQuery);