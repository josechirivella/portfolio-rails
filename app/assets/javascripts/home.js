// Modal
$(document).ready(function() {

    //select all the a tag with name equal to modal
    $('a[name=modal]').click(function(e) {
        //Cancel the link behavior
        e.preventDefault();
        //Get the A tag
        var id = $(this).attr('href');

        //Get the window height and width
        var winH = $(window).height();
        var winW = $(window).width();

        //transition effect
        $(id).fadeIn(500);

    });

    //if close button is clicked
    $('.modalwindow .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();
        $('.modalwindow').fadeOut(500);
    });

});