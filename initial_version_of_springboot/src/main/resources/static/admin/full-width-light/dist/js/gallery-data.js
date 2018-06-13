/*Gallery Init*/

"use strict";

/***** MasonryPortfolio function start *****/		
var masonryPortfolio = function() {	
	
		if( $('.portfolio-wrap').length > 0 ){	
		
			var $container = $('.portf');
			var $body = $('body');
		
			var activate_port= (function(){
				$container.isotope({
					itemSelector: '.item',
					gutter:0,
					layoutMode: 'packery',
					transitionDuration: "0.8s"
				});		
			});
			
			/*Filter*/
			$(document).on( "click", "#filters a", function(e) {
				$('#filters a').removeClass('active');
				$(this).addClass('active');
				var selector = $(this).attr('data-filter');
				$('#portfolio').isotope({ filter: selector });		
				return false;
			});	
			/*Filter*/
			
			$(window).on( 'resize', function () {
				
				$body.find('.portf').each(function () { 
					var winWidth = window.innerWidth;
					var container_mock = $('.gallery-wrap').width();
					columnNumb = 1;			
					var attr_col = $(this).attr('data-col');
						
					 if (winWidth >= 1466) {
						
						$('.portfolio-wrap').css( {width : container_mock});
						$('.portfolio-wrap.no-gutter').css( {width : container_mock});			
						$('.portfolio-wrap.no-gutter.full-width').css( {width : 100  + '%'});			
						var portfolioWidth = $('.portfolio-wrap').width();
						
						if (typeof attr_col !== typeof undefined && attr_col !== false) {
							columnNumb = $(this).attr('data-col');
						} else columnNumb = 3;
							
						var postWidth = Math.floor(portfolioWidth / columnNumb)			
						$(this).find('.item').each(function () { 
							$(this).css( { 
								width : postWidth - 20 + 'px',
								height : 'auto',
								margin : 10 + 'px' 
							});
							$('.no-gutter .'+$(this).attr('class')).css( {
								width : postWidth  + 'px',
								height : 'auto',
								margin : 0 + 'px' 
							});
							$('.wide.'+$(this).attr('class')).css( { 
								width : postWidth * 2 - 20 + 'px'  
							});
							$('.no-gutter .wide.'+$(this).attr('class')).css( { 
								width : postWidth * 2 + 'px'  
							});
							$('.tall.'+$(this).attr('class')).css( {
								height : 'auto' 
							});
							$('.small.'+$(this).attr('class')).css( {
								height : 'auto',  
							});
						
							$('.no-gutter .tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.wide-tall.'+$(this).attr('class')).css( {
								width : postWidth * 2 - 20 + 'px',
								height : postWidth * 2 - 20 + 'px'  
							});
							$('.no-gutter .wide-tall.'+$(this).attr('class')).css( {
								width : postWidth * 2 + 'px',
								height : 'auto', 
							});
						});
						
						
					} else if (winWidth > 1024) {
						
						$('.portfolio-wrap').css( {width : container_mock});
						$('.portfolio-wrap.no-gutter').css( {width : container_mock});		
						var portfolioWidth = $('.portfolio-wrap').width();
									
						if (typeof attr_col !== typeof undefined && attr_col !== false) {
							columnNumb = $(this).attr('data-col'); //alert(columnNumb);
						} else columnNumb = 3;
						
						postWidth = Math.floor(portfolioWidth / columnNumb)			
						$(this).find('.item').each(function () { 
							
							$(this).css( { 
								width : postWidth - 20 + 'px',
								height : 'auto',
								margin : 10 + 'px' 
							});
							
							$('.no-gutter .' +$(this).attr('class')).css( {
								width : postWidth  + 'px',
								height : 'auto',
								margin : 0 + 'px' 
							});
							$('.wide.'+$(this).attr('class') ).css( { 
								width : postWidth * 2 - 20 + 'px'  
							});
							$('.no-gutter .wide.'+$(this).attr('class')).css( { 
								width : postWidth * 2 + 'px'  
							});
							$('.tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.small.'+$(this).attr('class')).css( {
								height : 'auto',  
							});
							$('.no-gutter .tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.wide-tall.'+$(this).attr('class')).css( {
								width : postWidth * 2 - 20 + 'px',
								height : 'auto', 
							});
							$('.no-gutter .wide-tall.'+$(this).attr('class')).css( {
								width : postWidth * 2 + 'px',
								height : 'auto', 
							});
						});
						
						
					} else if (winWidth > 767) {
						
						$('.portfolio-wrap').css( {width : container_mock});
						$('.portfolio-wrap.no-gutter').css({width : container_mock});
						var portfolioWidth = $('.portfolio-wrap').width(),
						
						columnNumb = 2;
						postWidth = Math.floor(portfolioWidth / columnNumb)			
						$(this).find('.item').each(function () { 
							$(this).css( { 
								width : postWidth - 20 + 'px',
								height : 'auto',
								margin : 10 + 'px' 
							});
							$('.no-gutter .'+$(this).attr('class')).css( {
								width : postWidth  + 'px',
								height : 'auto',
								margin : 0 + 'px' 
							});
							$('.wide.'+$(this).attr('class')).css( { 
								width : postWidth * 2 - 20 + 'px'  
							});
							$('.no-gutter .wide.'+$(this).attr('class')).css( { 
								width : postWidth * 2 + 'px'  
							});
							$('.tall.'+$(this).attr('class')).css( {
								height : 'auto',
							});
							$('.small.'+$(this).attr('class')).css( {
								height : 'auto',  
							});
							$('.no-gutter .tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.wide-tall.'+$(this).attr('class')).css( {
								width : postWidth * 2 - 20 + 'px',
								height : postWidth   + 'px', 
							});
							$('.no-gutter .wide-tall.'+$(this).attr('class')).css( {
								width : postWidth * 2 + 'px',
								height : 'auto', 
							});
						});
						
						
					}	else if (winWidth > 479) {
						
						$('.portfolio-wrap').css( {width : container_mock});
						$('.portfolio-wrap.no-gutter').css( {width : container_mock});
						var portfolioWidth = $('.portfolio-wrap').width(),
						
						columnNumb = 1;
						postWidth = Math.floor(portfolioWidth / columnNumb)			
						$(this).find('.item').each(function () { 
							$(this).css( { 
								width : postWidth - 20 + 'px',
								height : 'auto',
								margin : 10 + 'px' 
							});
							$('.no-gutter .'+$(this).attr('class')).css( {
								width : postWidth  + 'px',
								height : 'auto',
								margin : 0 + 'px' 
							});
							$('.wide.'+$(this).attr('class')).css( { 
								width : postWidth - 20 + 'px'  
							});
							$('.no-gutter .wide.'+$(this).attr('class')).css( { 
								width : postWidth + 'px'  
							});
							$('.tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.small.'+$(this).attr('class')).css( {
								height : 'auto',  
							});
							$('.no-gutter .tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.wide-tall.'+$(this).attr('class')).css( {
								width : postWidth - 20 + 'px',
								height : postWidth   + 'px', 
							});
							$('.no-gutter .wide-tall.'+$(this).attr('class')).css( {
								width : postWidth  + 'px',
								height : postWidth   + 'px', 
							});
						});
						
						
					}
					
					else if (winWidth <= 479) {
						
						$('.portfolio-wrap').css( {width : container_mock});
						$('.portfolio-wrap.no-gutter').css( {width : container_mock});
						var portfolioWidth = $('.portfolio-wrap').width(),
						
						columnNumb = 1;
						postWidth = Math.floor(portfolioWidth / columnNumb)			
						$(this).find('.item').each(function () { 
							$(this).css( { 
								width : postWidth - 20 + 'px',
								height : 'auto',
								margin : 10 + 'px' 
							});
							$('.no-gutter .'+$(this).attr('class')).css( {
								width : postWidth  + 'px',
								height : 'auto',
								margin : 0 + 'px' 
							});
							$('.wide.'+$(this).attr('class')).css( { 
								width : postWidth - 20 + 'px'  
							});
							$('.no-gutter .wide.'+$(this).attr('class')).css( { 
								width : postWidth + 'px'  
							});
							$('.tall.'+$(this).attr('class')).css( {
								height : 'auto',  
							});
							$('.small.'+$(this).attr('class')).css( {
								height : 'auto',  
							});
							$('.no-gutter .tall.'+$(this).attr('class')).css( {
								height : 'auto', 
							});
							$('.wide-tall.'+$(this).attr('class')).css( {
								width : postWidth - 20 + 'px',
								height : postWidth   + 'px',  
							});
							$('.no-gutter .wide-tall.'+$(this).attr('class')).css( {
								width : postWidth + 'px',
								height : postWidth   + 'px', 
							});
						});
						
						
					}		
					//alert();
					
					//return columnNumb;
				});
			
			}).resize();
			
			activate_port();	
			
		}
	}
/***** MasonryPortfolio function End *****/

/*****Load function start*****/
$(window).on("load",function(){
	masonryPortfolio();
});

var click = false;
$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
	if((e.target.hash == '#photos_8')&&(click == false)){
		masonryPortfolio();
		//click = true;
	}
});
/***** LightGallery init start*****/	
$('.portf').lightGallery({  showThumbByDefault: false,hash: false});
/***** LightGallery init end*****/