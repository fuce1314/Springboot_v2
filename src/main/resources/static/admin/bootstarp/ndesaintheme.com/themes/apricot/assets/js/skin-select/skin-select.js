$(document).ready(function() { 
	
	
	// toggle skin select	
	$("#skin-select #toggle").click(function() { 

		if($(this).hasClass('active')) {
			$(this).removeClass('active')
			$('#skin-select').animate({ left:0 }, 100);	
			$('.wrap-fluid').css({"width":"auto","margin-left":"250px"});
			$('.navbar').css({"margin-left":"240px"});

			$('#skin-select li').css({"text-align":"left"});
			$('#skin-select li span, ul.topnav h4, .side-dash, .noft-blue, .noft-purple-number, .noft-blue-number, .title-menu-left').css({"display":"inline-block", "float":"none"});
			//$('body').css({"padding-left":"250px"});
			
			
			$('.ul.topnav li a:hover').css({" background-color":"green!important"});

			$('.ul.topnav h4').css({"display":"none"});

			$('.tooltip-tip2').addClass('tooltipster-disable');
			$('.tooltip-tip').addClass('tooltipster-disable');

			
			$('.datepicker-wrap').css({"position":"absolute", "right":"300px"});
			$('.skin-part').css({"visibility":"visible"});
			$('#menu-showhide, .menu-left-nest').css({"margin":"10px"});
			$('.dark').css({"visibility":"visible"});

			$('.search-hover').css({"display":"none"});
			$('.dropdown-wrap').css({"position":"absolute", "left":"0px", "top":"53px"});



			
		} else {
			$(this).addClass('active')
			

			//$('#skin-select').animate({ left:-200 }, 100);
			$('#skin-select').animate({ left:-200 }, 100);

			$('.wrap-fluid').css({"width":"auto", "margin-left":"50px"});
			$('.navbar').css({"margin-left":"50px"});

			$('#skin-select li').css({"text-align":"right"});
			$('#skin-select li span, ul.topnav h4, .side-dash, .noft-blue, .noft-purple-number, .noft-blue-number, .title-menu-left').css({"display":"none"});
			//$('body').css({"padding-left":"50px"});
			$('.tooltip-tip2').removeClass('tooltipster-disable');
			$('.tooltip-tip').removeClass('tooltipster-disable');
			
			$('.datepicker-wrap').css({"position":"absolute", "right":"84px"});
			
			$('.skin-part').css({"visibility":"visible", "top":"3px"});
			$('.dark').css({"visibility":"hidden"});
			$('#menu-showhide, .menu-left-nest').css({"margin":"0"});

			$('.search-hover').css({"display":"block", "position":"absolute", "right":"-100px"});

			$('.dropdown-wrap').css({"position":"absolute", "left":"-10px", "top":"53px"});


			

		}
		return false;
	});
	
	
	// show skin select for a second
	setTimeout(function(){ $("#skin-select #toggle").addClass('active').trigger('click'); },10)
	
	
}); // end doc.ready

