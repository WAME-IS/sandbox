/**
 * Add param to url
 * 
 * @param string name
 * @param string value
 * @param string url
 * @returns {window.location.href}
 */
function addParamToUrl(name, value, url) {
    if (!url) {
        url = window.location.href;
    }

    var re = new RegExp("([?&]" + name + "=)[^&]+", "");

    function add(sep) {
        url += sep + name + "=" + encodeURIComponent(value);
    }

    function change() {
        url = url.replace(re, "$1" + encodeURIComponent(value));
    }

    if (url.indexOf("?") === -1) {
        add("?");
    } else {
        if (re.test(url)) {
            change();
        } else {
            add("&");
        }
    }

    return url;
}


/**
 * Add more params to url
 * 
 * @param object params
 * @param string url
 * @returns {window.location.href}
 */
function addParamsToUrl(params, url) {
    if (!url) {
        url = window.location.href;
    }

    $.each(params, function(name, value) {
        url = addParamToUrl(name, value, url);
    });

    return url;
}