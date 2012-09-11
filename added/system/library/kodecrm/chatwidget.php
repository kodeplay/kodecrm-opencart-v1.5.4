<?php

/**
 * Helpers for rendering the chat widget from a 
 * bunch of settings
 *
 * @param String $appid The KodeCRM appid
 * @param String $custom_settings An array of settings
 *   Example: $custom_settings = 'color:#000;text:Chat with us;bg:#000099'
 */
function kodecrm_chatwidget_render($appid) {
    $snippet = "var _kcrm = {};";
    $snippet .= "_kcrm['app_id'] = '$appid';";
    $snippet .= "(function (w, d, undefined) {";
    $snippet .= "    var script = document.createElement(\"script\");";
    $snippet .= "    script.type = \"text/javascript\";";
    $snippet .= "    script.src = \"http://kodecrm.com/static/javascript/widget.js\";";
    $snippet .= "    d.body.appendChild(script);";
    $snippet .= "}) (window, document);";
    return $snippet;
}

/**
 * Function to convert the custom settings string to a key-value array
 */
function kodecrm_chatwidget_settings($custom_settings) {
    $settings = array();
    $parts = array_map('trim', explode(';', $custom_settings));
    foreach ($parts as $part) {
        if (!$part) continue;
        list($k, $v) = array_map('trim', explode(':', $part));
        $settings[$k] = $v;
    }
    return $settings;
}

