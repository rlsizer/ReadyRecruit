﻿

$(document).ready(function () {

    $('#dependents').on('click', function definition() {
        alert("Dependents include children and spouse and any others that rely on you for their support (like elderly parents who need your financial and physical support)").fontcolor("blue").fontsize(16);
    });
    $('#no').on('click', function no() {
        alert("Congratulations on making such a difficult decision!  Feel free to continue to browse the site anytime if you change your mind. Thank you for visiting Ready Recruit.");
    });



    //$('#notepad').on('click', function () {
    //    //$('#noteshide').removeClass('hidden');
    //    $('#noteshide').show();
    //});

    //$('#savenotes').on('click', function () {
    //    $('#noteshide').hide();
    //});



    //document.getElementById("myP").style.visibility = "hidden";
    //$('#notepad').on('click',function () {
    //    $('noteshide').hide();
    //});

    //$('#savenotes').on('click',function() {
    //    $('noteshide').show();
    //});


    var clickEvent = false;
    $('#myCarousel').carousel({
        interval: 4000
    }).on('click', '.list-group li', function () {
        clickEvent = true;
        $('.list-group li').removeClass('active');
        $(this).addClass('active');
    }).on('slid.bs.carousel', function (e) {
        if (!clickEvent) {
            var count = $('.list-group').children().length - 1;
            var current = $('.list-group li.active');
            current.removeClass('active').next().addClass('active');
            var id = parseInt(current.data('slide-to'));
            if (count == id) {
                $('.list-group li').first().addClass('active');
            }
        }
        clickEvent = false;
    });
});

$(window).load(function () {
    var boxheight = $('#myCarousel .carousel-inner').innerHeight();
    var itemlength = $('#myCarousel .item').length;
    var triggerheight = Math.round(boxheight / itemlength + 1);
    $('#myCarousel .list-group-item').outerHeight(triggerheight);
});