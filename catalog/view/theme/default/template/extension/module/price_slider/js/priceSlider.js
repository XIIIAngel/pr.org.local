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


        var url = $(this).attr('href');
        url = url.substring(url.indexOf('?'));

        console.log(url);
        let regax = new RegExp('^.*' + url + '.*$');

        if (regax.test(window.location)) {
            $(this).addClass('tutdiag');
        }
    });
});