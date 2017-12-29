MATERIALMODALINLINE = (function() {
    var modalClass = '.modal-inline';
    var $modal = $(modalClass);
    
    /**
     * Focus first input after open modal
     */
    var focusInput = function() {
        var input = $modal.find('input[type="text"]');
            
        if (input) {
            (input[0]).focus();
        }
    };
    
    /**
     * Set values from main form
     */
    var setValues = function() {
        $modal.find('.modal-inline-input').each(function(index) {
            var input = $(this).data('input-name');
            var value = $('[name="' + input + '"]').val();
            
            $(this).val(value);
        });
    };
    
    /**
     * Update values to main form
     */
    var updateValues = function() {
        $modal.find('.modal-inline-input').each(function(index) {
            var input = $(this).data('input-name');
            var value = $(this).val();

            $('[name="' + input + '"]').val(value);
        });
    };
    
    /**
     * Modal close
     */
    var modalClose = function() {
        $modal.modal('close');
    };
    
    /**
     * Subimt modal
     */
    var submitModal = function() {
        $modal.delegate('.modal-check', 'click', function() {
            updateValues();
            WAME.overlay();
            modalClose();
        });
    };
    
    /**
     * Init inline modal
     */
    var initModal = function() {
        $modal.modal({
            ready: function(modal, trigger) {
                focusInput();
                setValues();
            }
        });
    };
    
    return {
        init: function() {
            initModal();
            submitModal();
        }
    };
    
}());


WAME.overlay = (function() {
    var $body = $('body');

    var createOverlay = function(element) {
        if (!element.find('.overlay-block').length) {
            $('<div/>', {
                'class': 'overlay-block',
                'html': WAME.loader()
            }).appendTo(element);
        }
    };
    
    return function() {
        $body.on('click', '[data-overlay]', function(e) {
            e.preventDefault();

            var status = true;
            var object = $(this).data('overlay');
            
            if (object === 'form') {
                status = WAME.formValidator($(this).closest('form'));
            } else {
                status = WAME.formValidator($(this).closest(object).find('form'));
            }

            if (status) {
                createOverlay($(this).closest(object));
            }
        });
    };
}());

WAME.loader = (function() {
    return function() {
        var $loader = $('<div/>', {
            'class': 'preloader valign-wrapper',
            'html': $('<div/>', {
                'class': 'preloader-wrapper active valign',
                'html': $('<div/>', {
                    'class': 'spinner-layer',
                    'html': '<div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div>'
                })
            })
        });

        return $loader;
    };
}());

WAME.formValidator = (function() {
    return function(object) {
        var isValid = true;

        if (object.length) {
            object.each(function( index, form ) {
                isValid = !$(form).find('.has-error').length;
            });
        }

        return isValid;
    };
}());

$(function() {
    MATERIALMODALINLINE.init();
});


