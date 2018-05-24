$(document).ready(function () {
    $("#d").ionRangeSlider({
        grid: true,
        type: "double",
        min: 0.5,
        max: 8.0,
        step: 0.1
    });

    $("#D1").ionRangeSlider({
        grid: true,
        type: "int",
        min: 0,
        max: 60,
        step: 1
    });

    $("#L").ionRangeSlider({
        grid: true,
        type: "int",
        min: 10,
        max: 500,
        step: 5
    });

    $('.bord a').each(function () {
        let href = window.location.href;
        href = href.substr(0, href.indexOf('page') - 1);
        let url = $(this).attr('href');
        if (url == (href.length == 0 ? window.location : href) ) {
            $(this).addClass('tutdiag');
        }
    });
});