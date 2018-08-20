/*
* jQuery Progress Button 1.0.0
* https://github.com/Desertsnowman/jQuery-Progress-Buttons
*
* Copyright 2012, David Cramer
* http://digilab.co.za
*
* Licensed under the MIT license:
* http://www.opensource.org/licenses/MIT
*/


(function( $ ){

    var methods = {
        init : function( options ) {
            
            // setup the defaults
            // also checks if there are any settings in the data attribute            
            var options = $.extend( {
                'percent'         : false,
                'color'           : false,
                'opacity'         : false,
                'fade'            : false
            }, options);
            var defaults = {
                'percent'         : this.data('percent') ? this.data('percent') : 0,
                'color'           : this.data('color') ? this.data('color') : '#06adff',
                'opacity'         : this.data('opacity') ? this.data('opacity') : 0.09,
                'fade'            : this.data('fade') ? this.data('fade') : 0
            };      
            var settings = {
                'percent'         : options.percent ? this.data('percent', options.percent).data('percent') : defaults.percent,
                'color'           : options.color ? this.data('color', options.color).data('color') : defaults.color,
                'opacity'         : options.opacity ? this.data('opacity', options.opacity).data('opacity') : defaults.opacity,
                'fade'            : options.fade ? this.data('fade', options.fade).data('fade') : defaults.fade
            };
            return this.each(function() {                
                
                var itm = jQuery(this);
                // captures the current background gradien to prepend to the
                // progress gradient
                if(!itm.data('cgrad')){
                    itm.data('cgrad', itm.css('background-image'));
                }
                if(settings.percent > 0){
                    
                    // breakup colour code to rgba so that the start and end can
                    // be set along with adding an opacity
                    r = settings.color.replace(/^s*#|s*$/g, '');
                    if(r.length == 3){
                        r = r.replace(/(.)/g, '$1$1');
                    }                
                    g = parseInt(r.substr(2, 2), 16);
                    b = parseInt(r.substr(4, 2), 16);
                    r = parseInt(r.substr(0, 2), 16);                
                    var rgba = {
                        start : 'rgba(' + r + ', ' + g + ', ' + b + ', ' + settings.opacity + ')',
                        end : 'rgba(' + r + ', ' + g + ', ' + b + ', 0)'
                    };
                    var perc = settings.percent;
                    // add a gradient for all browsers bar IE 6-7, sorry
                    var fbar = "-moz-linear-gradient(left,  "+rgba.start+" "+perc+"%, "+rgba.end+" "+(settings.percent+settings.fade)+"%)";
                    var wbar = "-webkit-linear-gradient(left,  "+rgba.start+" "+perc+"%,"+rgba.end+" "+(settings.percent+settings.fade)+"%)";
                    var gbar = "-webkit-gradient(linear, left top, right top, color-stop("+perc+"%,"+rgba.start+"), color-stop("+(settings.percent+settings.fade)+"%,"+rgba.end+"))";
                    var obar = "-o-linear-gradient(left,  "+rgba.start+" "+perc+"%,"+rgba.end+" "+(settings.percent+settings.fade)+"%)";
                    var mbar = "-ms-linear-gradient(left,  "+rgba.start+" "+perc+"%,"+rgba.end+" "+(settings.percent+settings.fade)+"%)";
                    var bar = "linear-gradient(to right,  "+rgba.start+" "+perc+"%,"+rgba.end+" "+(settings.percent+settings.fade)+"%)";
                    
                    // we now apply it to the current element appended to current gradient
                    // dont want to overide the design you know
                    itm.css('background-image', itm.data('cgrad') ? fbar+','+itm.data('cgrad') : fbar);
                    itm.css('background-image', itm.data('cgrad') ? gbar+','+itm.data('cgrad') : gbar);
                    itm.css('background-image', itm.data('cgrad') ? wbar+','+itm.data('cgrad') : wbar);
                    itm.css('background-image', itm.data('cgrad') ? obar+','+itm.data('cgrad') : obar);
                    itm.css('background-image', itm.data('cgrad') ? mbar+','+itm.data('cgrad') : mbar);
                    itm.css('background-image', itm.data('cgrad') ? bar+','+itm.data('cgrad') : bar);

                }
            });
        },
        reset : function( ) {
            // simple resets the bar to starting points.
            return this.each(function(){
                var itm = jQuery(this);
                itm.css('background-image', '');
                itm.removeData('color');
                itm.removeData('percent');
                itm.removeData('opacity');
            })

        }        
    };
  
    $.fn.progressbutton = function(method) {
        
        // want to add a few more methods. perhaps an animation to prevent stuttering
        if ( methods[method] ) {
            // run the selected method
            return methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
            // process init
            return methods.init.apply( this, arguments );
        } else {
            // return an error for incorrect method request
            jQuery.error( 'Method ' +  method + ' does not exist on jQuery.progressbutton' );
        }      
    };
})( jQuery );

