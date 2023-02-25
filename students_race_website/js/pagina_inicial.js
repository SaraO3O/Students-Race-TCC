//DROPDOWN MENU
$(function () {
    $('.dropdown.large').hover(
        function () {
            $('.dropdown-menu.large', this).stop(true, true).fadeIn('fast');
            $(this).toggleClass('open');
            $('i', this).toggleClass('caret caret-up');
        },
        function () {
            $('.dropdown-menu.large', this).stop(true, true).fadeOut('fast');
            $(this).toggleClass('open');
            $('i', this).toggleClass('caret caret-up');
        });
});

$(function () {
    $('.dropdown.mobile').hover(
        function () {
            $('.dropdown-menu.mobile', this).stop(true, true).fadeIn('fast');
            $(this).toggleClass('open');
            $('i', this).toggleClass('caret caret-up');
        },
        function () {
            $('.dropdown-menu.mobile', this).stop(true, true).fadeOut('fast');
            $(this).toggleClass('open');
            $('i', this).toggleClass('caret caret-up');
        });
});

//Criar conta
$('div#icons_register').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeOut faster">Criar conta</p>');
});
$('div#icons_register').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn faster">Criar conta</p>');
});

//Entrar
$('div#icons_login').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeOut faster">Entrar</p>');
});
$('div#icons_login').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn faster">Entrar</p>');
});

//Informações
$('div#icons_info').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeOut faster">Informa&ccedil;&otilde;es</p>');
});
$('div#icons_info').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn faster">Informa&ccedil;&otilde;es</p>');
});