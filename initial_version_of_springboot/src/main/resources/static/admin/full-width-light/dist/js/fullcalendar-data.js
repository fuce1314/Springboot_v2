/*FullCalendar Init*/
$(document).ready(function() {
	'use strict';
	
    var drag =  function() {
        $('.calendar-event').each(function() {

        // store data so the calendar knows to render an event upon drop
        $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
        });

        // make the event draggable using jQuery UI
        $(this).draggable({
            zIndex: 1111999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
        });
    });
    };
    
    var removeEvent =  function() {
		$(document).on('click','.remove-calendar-event',function(e) {
			$(this).closest('.calendar-event').fadeOut();
        return false;
    });
    };
    
    $(".add-event").keypress(function (e) {
        if ((e.which == 13)&&(!$(this).val().length == 0)) {
            $('<div class="btn btn-success calendar-event">' + $(this).val() + '<a href="javascript:void(0);" class="remove-calendar-event"><i class="ti-close"></i></a></div>').insertBefore(".add-event");
            $(this).val('');
        } else if(e.which == 13) {
            alert('Please enter event name');
        }
        drag();
        removeEvent();
    });
    
    
    drag();
    removeEvent();
    
    var date = new Date();
    var day = date.getDate();
    var month = date.getMonth();
    var year = date.getFullYear();
    
    $('#calendar').fullCalendar({
       
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar
            eventLimit: true, // allow "more" link when too many events
        	
        eventMouseover: function (data, event, view) {
			var tooltip = '<div class="tooltiptopicevent tooltip tooltip-inner" style="width:auto;height:auto;position:absolute;z-index:10001;">10:00 AM ' + data.title + '</div>';
			$("body").append(tooltip);
            $(this).mouseover(function (e) {
                $(this).css('z-index', 10000);
                $('.tooltiptopicevent').fadeIn('500');
                $('.tooltiptopicevent').fadeTo('10', 1.9);
            }).mousemove(function (e) {
                $('.tooltiptopicevent').css('top', e.pageY + 10);
                $('.tooltiptopicevent').css('left', e.pageX + 20);
            });
        },
        eventMouseout: function (data, event, view) {
            $(this).css('z-index', 8);
            $('.tooltiptopicevent').remove();
        },
        dayClick: function () {
            tooltip.hide()
        },
        eventResizeStart: function () {
            tooltip.hide()
        },
        eventDragStart: function () {
            tooltip.hide()
        },
        viewDisplay: function () {
            tooltip.hide()
        },
			events: [
                {
                    title: 'Conference',
					start: '2017-02-25'
                },
				{
                    title: 'Meetings',
					start: '2017-02-27'
                },
				{
                    title: 'Sports',
					start: '2017-02-01'
                },
				{
                    title: 'Party',
					start: '2017-02-22'
                },
				{
                    title: 'Travel',
					start: '2017-02-10'
                },
                {
                    start: '2017-02-06',
					end: '2017-02-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-02-19',
					end: '2017-02-19',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    title: 'Conference',
					start: '2017-02-25'
                },
				{
                    title: 'Meetings',
					start: '2017-03-27'
                },
				{
                    title: 'Sports',
					start: '2017-03-01'
                },
				{
                    title: 'Party',
					start: '2017-03-22'
                },
				{
                    title: 'Travel',
					start: '2017-03-10'
                },
                {
                    start: '2017-03-06',
					end: '2017-03-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-03-19',
					end: '2017-03-19',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    title: 'Conference',
					start: '2017-04-25'
                },
				{
                    title: 'Meetings',
					start: '2017-04-27'
                },
				{
                    title: 'Sports',
					start: '2017-04-01'
                },
				{
                    title: 'Party',
					start: '2017-04-22'
                },
				{
                    title: 'Travel',
					start: '2017-04-10'
                },
                {
                    start: '2017-04-06',
					end: '2017-04-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-04-29',
					end: '2017-04-29',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                }
				,
				{
                    title: 'Conference',
					start: '2017-05-25'
                },
				{
                    title: 'Meetings',
					start: '2017-05-27'
                },
				{
                    title: 'Sports',
					start: '2017-05-01'
                },
				{
                    title: 'Party',
					start: '2017-05-22'
                },
				{
                    title: 'Travel',
					start: '2017-05-10'
                },
                {
                    start: '2017-05-07',
					end: '2017-05-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-05-19',
					end: '2017-05-19',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                }
            ]
		});
    
	 $('#calendar_small').fullCalendar({
       
            header: {
                left: 'title',
                right: 'prev,next',
			},
			height: 'auto',
            editable: false,
            droppable: false, // this allows things to be dropped onto the calendar
            eventLimit: true, 
			
        eventMouseover: function (data, event, view) {
			var tooltip = '<div class="tooltiptopicevent tooltip tooltip-inner" style="width:auto;height:auto;position:absolute;z-index:10001;">10:00 AM ' + data.title + '</div>';
			$("body").append(tooltip);
            $(this).mouseover(function (e) {
                $(this).css('z-index', 10000);
                $('.tooltiptopicevent').fadeIn('500');
                $('.tooltiptopicevent').fadeTo('10', 1.9);
            }).mousemove(function (e) {
                $('.tooltiptopicevent').css('top', e.pageY + 10);
                $('.tooltiptopicevent').css('left', e.pageX + 20);
            });
        },
        eventMouseout: function (data, event, view) {
            $(this).css('z-index', 8);
            $('.tooltiptopicevent').remove();
        },
        dayClick: function () {
            tooltip.hide()
        },
        eventResizeStart: function () {
            tooltip.hide()
        },
        eventDragStart: function () {
            tooltip.hide()
        },
        viewDisplay: function () {
            tooltip.hide()
        },
			events: [
                {
                    title: 'Conference',
					start: '2017-02-25'
                },
				{
                    title: 'Meetings',
					start: '2017-02-27'
                },
                {
                    start: '2017-02-06',
					end: '2017-02-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-02-19',
					end: '2017-02-19',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				 {
                    title: 'Conference',
					start: '2017-03-21'
                },
				{
                    title: 'party',
					start: '2017-03-22'
                },
                {
                    start: '2017-03-06',
					end: '2017-03-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-03-19',
					end: '2017-03-19',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    title: 'Conference',
					start: '2017-04-26'
                },
				{
                    title: 'meeting',
					start: '2017-04-21'
                },
                {
                    start: '2017-04-06',
					end: '2017-04-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-04-29',
					end: '2017-04-29',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                }
				,
				{
                    title: 'Conference',
					start: '2017-05-20'
                },
				{
                    title: 'meeting',
					start: '2017-05-01'
                },
                {
                    start: '2017-05-07',
					end: '2017-05-08',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                },
				{
                    start: '2017-05-19',
					end: '2017-05-19',
					overlap: false,
					rendering: 'background',
					color: 'rgba(234, 108, 65, 0.3)'
                }
            ]
		});
    
});