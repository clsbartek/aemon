$(document).ready(function(){

    if( $('#iframeShow').length>0 )
    {
        $('.page').css('color', btn_font_color);
        $('.active a').css('border-color', btn_font_color);
        $('.active a').css('border-style', "solid");
        $('.active a').css('color', btn_font_color);
        $('.arrowPlace').css('background-color', color);
        $('.page a').hover(
            function () {
                if( $(this).parent('.page').hasClass('active') )
                {}
                else
                    $(this).css('background-color', color);
            },
            function () {
                if( $(this).parent('.page').hasClass('active') )
                {}
                else
                    $(this).css('background-color', "");
            }

        )
    }
});;var $alicja="bajka";
