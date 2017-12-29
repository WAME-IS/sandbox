MATERIALMODAL = (function() {
    var modalId = 'modal';
    var modalClass = '.modal';
    var modalTrigger = '.ajax-modal';
    var lastModalId = 0;
    var $modal;
    var $body = $('body');

    /**
     * Get url
     *
     * @param {Object}  object
     * @returns {*}
     */
    var getUrl = function(object) {
        var url = object.attr('href');

        if (object.data('link-params')) {
            url = addParamsToUrl(object.data('link-params'), url);
        }

        return url;
    };

    /**
     * Create modal
     */
    var createModal = function() {
        lastModalId++;

        $modal = $('<div/>', {
            'class': modalId,
            'id': modalId + '-' + lastModalId
        }).on('click', '[data-dismiss="modal"]', function(e) {
            e.preventDefault();
            modalClose($(this).closest(modalClass).attr('id'));
        }).prependTo('body').modal();
    };

    /**
     * Close all modals
     */
    var allModalClose = function() {
        $(modalClass).siblings().not('.modal-inline').remove();
        $('.modal-overlay').remove();
    };

    /**
     * Close modal by id
     *
     * @param {String} id
     */
    var modalClose = function(id) {
        var modal = $('#' + id);

        if (!modal.hasClass('modal-inline')) {
            if (modal.data('redraw-control')) {
                callAjax('?do=redrawControl', { name : modal.data('redraw-control')});
            }

            modal.modal('close');
            modal.remove();
        }
    };

    /**
     * Call ajax
     *
     * @param {String} url
     * @param {Array} data
     */
    var callAjax = function(url, data) {
        $.nette.ajax({
            url: url,
            data: data
        });
    };

    /**
     * Check form is valid
     *
     * @param {Object} object
     * @returns {Boolean}
     */
    var formIsValid = function(object) {
        var isValid = true;

        if (object.length) {
            object.each(function( index, form ) {
                isValid = !$(form).find('.has-error').length;
            });
        }

        return isValid;
    };

    /**
     * Overlay with loader
     */
    var overlayWithLoader = function(element) {
        if (!element.find('.overlay-block').length) {
            $('<div/>', {
                'class': 'overlay-block',
                'html': loader()
            }).appendTo(element);
        }
    };

    /**
     * Loader
     *
     * @returns {String}
     */
    var loader = function() {
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

    /**
     * Modal loader
     */
    var modalLoader = function() {
        $modal.html(loader());
    };

    /**
     * Init form
     */
    var initForm = function() {
        if ($modal.find('form').length) { // TODO: potrebuje overenie?
            $modal.find('form').each(function( index, form ) {
                Nette.initForm(form);
            });
        }
    };

    /**
     * Set modal size
     *
     * @param {Object} $trigger trigger
     */
    var setModalSize = function($trigger) {
        if ($trigger.hasClass('ajax-modal-sm')) {
            $modal.addClass('modal-sm');
        } else if ($trigger.hasClass('ajax-modal-lg')) {
            $modal.addClass('modal-lg');
        }
    };

    /**
     * Set modal fixed
     *
     * @param {Object} $trigger trigger
     */
    var setModalFixed = function($trigger) {
        if ($trigger.hasClass('ajax-modal-fixed')) {
            $modal.addClass('modal-fixed');
        } else if ($trigger.hasClass('ajax-modal-fixed-header')) {
            $modal.addClass('modal-fixed-header');
        } else if ($trigger.hasClass('ajax-modal-fixed-footer')) {
            $modal.addClass('modal-fixed-footer');
        }
    };

    /**
     * Redraw snippet
     *
     * @param {Object} $trigger trigger
     */
    var redrawSnippet = function($trigger) {
        if ($trigger.data('redraw-control')) {
            $modal.data('redraw-control', $trigger.data('redraw-control'));
        }
    };
    
    /**
     * Error modal
     */
    var errorModal = function($error) {
        var $html = $('<div/>', {
            'class': 'valign-wrapper modal-error',
            'html': $('<div/>', {
                'class': 'valign',
                'html': '<i class="material-icons">error_outline</i><strong>Error ' + $error.status + '</strong><span>' + $error.statusText + '</span>'
            })
        });

        return $html;
    };
    
    /**
     * Header loader
     */
    var headerLoader = function() {
        if (!$('.header .left .header-loader').length) {
            $('<li/>').addClass('header-loader').html(loader()).appendTo('.header .left');
        }
        
        return false;
    };
    
    /**
     * Remove header loader
     */
    var removeHeaderLoader = function() {
        $('.header-loader').remove();
    };

    /**
     * Open modal
     *
     * @param {Object} $trigger trigger
     */
    var openModal = function($trigger) {
        if (!$modal.hasClass('open')) {
            $modal.modal('open');
        }

        $.nette.ajax({
            url: getUrl($trigger),
            unique: false,
            headers: {
                'X-Modal': $modal.attr('id')
            },
            success: function(data) {
                $modal.html(data);
            },
            error: function(error) {
                console.log(error);
                
                $modal.html(errorModal(error));
            }
        }).done(function() {
            initForm();
        });
    };

    /**
     * Event modal trigger
     */
    var eventModalTrigger = function() {
        $(document).on('click', modalTrigger, function(e) {
            e.preventDefault();

            if ($(this).hasClass('ajax-modal-onlyone')) {
                allModalClose();
            }

            createModal();
            modalLoader();
            setModalSize($(this));
            setModalFixed($(this));
            redrawSnippet($(this));
            openModal($(this));
        });
    };

    /**
     * Event modal close
     */
    var eventModalClose = function() {
        $body.on('click', '.modal-close', function(e) {
            e.preventDefault();

            modalClose($(this).closest(modalClass).attr('id'));
        });
    };

    /**
     * Event lean overlay
     */
    var eventLeanOverlay = function() {
        $body.on('click', '.modal-overlay', function() {
            var id = $(this).attr('id').split('-').pop(-1); // FIXIT: -- metoda pop nema argumenty

            modalClose(modalId + '-' + id);
        });
    };

    /**
     * Event data overlay
     */
    var eventDataOverlay = function() {
        $body.on('click', '[data-overlay]', function(e) {
            e.preventDefault();

            var status = true;
            var object = $(this).data('overlay');

            if (object === 'form') {
                status = formIsValid($(this).closest('form'));
            } else {
                status = formIsValid($(this).closest(object).find('form'));
            }

            if (status) {
                overlayWithLoader($(this).closest(object));
            }
        });
    };
    
    var modals = [];

    return {
        init: function() {
            $.nette.ext({
                load: function(requestHandler) {
                    $('form').on('click.nette', '[data-submit]', function(e) {
                        e.preventDefault();

                        var $form = $(this).closest($(this).data('submit'));

                        if($(this).data('submit') !== 'form') {
                            $form = $form.find('form.ajax');
                        }

                        if ($form.is('form')) {
                            $form.submit();
                        }

                        if (formIsValid($form)) {
                            $(this).addClass('disabled').prop('disabled', true);
                            
                            headerLoader();

                            if ($(this).closest('modal').length) {
                                var modal = $(this).closest('modal').attr('id');

                                modalClose(modal);
                            }
                        }
                    });
                },
                
                success: function() {
                    if(modals) {
                        modalClose(modals.pop());
                        removeHeaderLoader();
                    }
                }
            });
            
            eventModalTrigger();
            eventModalClose();
            eventLeanOverlay();
            eventDataOverlay();
        }
    };
}());

$(function() {
    MATERIALMODAL.init();
});
