$(function() {
    var modalId = 'modal';
    var $modal;
    
    if (!$('#' + modalId).length) {
        $modal = $('<div/>', {
            'class': 'modal fade" id="' + modalId + '" tabindex="-1" role="dialog" aria-labelledby="' + modalId + 'Label',
            html: $('<div/>', {
                'class': 'modal-dialog',
                role: 'document',
                html: $('<div/>', {
                    'class': 'modal-content'
                })
            })
        })
        .on('shown.bs.modal', function (e) {
            $(e.target).focus();
        })
        .on('hidden.bs.modal', function (e) {
            $(e.target)
                .removeData('bs.modal')
                .find('.modal-dialog').removeClass('modal-sm modal-lg')
                .find('.modal-content').empty();
        })
        .on('click', '[data-submit="modal"]', function(e) {
            var status = true;

            if ($modal.find('form').length) {
                $modal.find('form').each(function( index, form ) {
                    status = !$(form).find('.has-error').length;
                });
            }

            if (status) {
                overlay();
            }
        })
        .prependTo('body');
    }
    
    $(document).on('click', '.ajax-modal', function(e) {
        e.preventDefault();
        
        $(this)
            .attr({
                'data-toggle': modalId,
                'data-target': '#' + modalId,
                'tabindex:': '-1',
                'role': 'dialog',
                'aria-labelledby': modalId + 'Label'
            })
            .addClass('ajax');
        
        modalLoader();

        if ($(this).hasClass('ajax-modal-sm')) {
            $modal.find('.modal-dialog').addClass('modal-sm');
        } else if ($(this).hasClass('ajax-modal-lg')) {
            $modal.find('.modal-dialog').addClass('modal-lg');
        }

        if (!$('body').hasClass('modal-open')) {
            $modal.modal();
        }

//        $modal.find('.modal-content').load($(this).attr('href'), function() {
//            initForm();
//        });
        
        $.nette.ajax({
            url: $(this).attr('href'),
//            dataType: 'html',
            headers: {
                'X-Modal': true
            },
            success: function(data){
                $modal.find('.modal-content').html(data);
            }
        }).done(function() {
            initForm();
        });
    });
    
    /**
     * Overlay
     */
    function overlay() {
        $('<div/>', {
            'class': 'modal-overlay',
            'style': 'position: absolute; z-index: 1; width: 100%; height: 100%; background-color: rgba(255,255,255,.75); border-radius: 5px;',
            'html': loader()
        }).appendTo( $modal.find('.modal-content'));
    }
    
    /**
     * Loader
     * 
     * @returns {String}
     */
    function loader() {
        var $spinner = $('<span/>', {
            'class': 'fa fa-spinner fa-pulse fa-3x fa-fw',
            'style': 'display: table-cell; vertical-align: middle;'
        });
        
        var $loader = $('<div/>', {
            'class': 'modal-loader text-center text-primary',
            'style': 'display: table; width: 100%; height: 100%; min-height: 200px;',
            'html': $spinner
        });
        
        return $loader;
    }
	
    /**
     * Modal loader
     */
	function modalLoader() {
		$modal.find('.modal-content').html(loader());
	}
    
    /**
     * Init form
     */
    function initForm() {
        if ($modal.find('form').length) {
            $modal.find('form').each(function( index, form ) {
                Nette.initForm(form);
            });
        }
    }
    
});
