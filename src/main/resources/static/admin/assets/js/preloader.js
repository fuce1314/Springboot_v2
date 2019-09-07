    $(function() { // makes sure the whole site is loaded
        $('#divstatus').fadeOut(); // will first fade out the loading animation
        $('#preloader').fadeOut(); // will fade out the white DIV that covers the website.
        $('body').delay(350).css({
            'overflow': 'visible'
        });
    })