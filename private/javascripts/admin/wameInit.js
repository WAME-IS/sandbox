var WAME = (function() {
    var initDropdown = function() {
        $('.dropdown-button').dropdown();
    };

    var initTooltip = function() {
        $('.tooltipped').tooltip({delay: 50});
    };

    var initTabs = function() {
        $('ul.tabs').tabs();
    };

    var initForms = function() {
        Materialize.updateTextFields();
    };

    var initDatePicker = function() {
        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });
    };

    var initSelect = function() {
        $('select').material_select();

        $('.select-wrapper').each(function (index) {
            var div = $(this).parent('div');
            var label = div.find('label');

            label.insertAfter($(this));
        });
    };

    var initRadio = function() {
        $('label > input[type="radio"]').each(function (index) {
            if (!$(this).hasClass('browser-default')) {
                var key = 'md-radio-' + index;
                var label = $(this).closest('label').attr('for', key);

                if (label) {
                    $(this).attr('id', key).insertBefore(label);
                }
            }
        });
    };
    
    var initDisabledButton = function() {
        $('[data-disabled="click"]').on('click', function() {
            $(this).addClass('disabled').prop('disabled', true);
        });
    };
    
    var initCheckbox = function() {
        $('label > input[type="checkbox"]').each(function (index) {
            if (!$(this).hasClass('browser-default')) {
                var key = 'md-checkbox-' + index;
                var label = $(this).closest('label').attr('for', key);

                if (label) {
                    $(this).attr('id', key).insertBefore(label);
                }
            }
        });
    };

    var initTextarea = function() {
        $('[data-autoresize]').trigger('autoresize');
    };
    
    var initAjaxSnippet = function() {
        $('.ajax-snippet').on('click', function(e) {
            e.preventDefault();
            
            var url = $(this).attr('href');
            var snippet = $(this).data('ajax-snippet');
            
            if ($(this).hasClass('tooltipped')) {
                $(this).tooltip('remove');
            }
            
            $.nette.ajax({
                url: url,
                unique: false,
                success: function(data) {
                    $(snippet).html(data);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        });
    };

    return {
        init: function() {
            initDropdown();
            initTooltip();
//            initTabs();
            initForms();
            initDatePicker();
            initSelect();
            initRadio();
            initCheckbox();
            initTextarea();
            initDisabledButton();
            initAjaxSnippet();
        }
    };
}());

$(function() {
    $.nette.ext('WAME.init', {
        success: function(payload) {
            WAME.init();
        }
    });
});