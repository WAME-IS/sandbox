$(document).ready(function() {
    var lang = $('html').attr('lang');
    
    // Sidebar
    $('.sidebar-collapse').sideNav();

    $('#sidebar .collapsible').collapsible({
        accordion : true
    });

    // User panel
    $('.sidebar-user-panel-collapse').sideNav({
        edge: 'right',
        closeOnClick: true
    });

    // Grid filter
    $('.grid-filter').on('click', function() {
        var container = $('#grid-filter');
        
        if (container.hasClass('active')) {
            $(container).slideUp().removeClass('active');
        } else {
            $(container).slideDown().addClass('active');
        }
        
        return false;
    });
    
    // DateTimePicker
    $('.date-picker').bootstrapMaterialDatePicker({ format : 'DD.MM.YYYY', lang : lang, weekStart : 1, time : false, nowButton : true, clearButton : true });
    $('.time-picker').bootstrapMaterialDatePicker({ format : 'HH:mm', lang : lang, date : false, nowButton : true, clearButton : true });
    $('.date-time-picker').bootstrapMaterialDatePicker({ format : 'DD.MM.YYYY HH:mm', lang : lang, weekStart : 1, nowButton : true, clearButton : true });
    
    // Active links
    $('a[href="' + window.location.href + '"], a[href="' + window.location.pathname + '"]').addClass('active');
    
    // Init
    WAME.init();
});