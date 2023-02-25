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

//MEU PERFIL
$('div#icons_perfil').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn fast">Unidades</p>');
});
$('div#icons_perfil').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg">Meu perfil</p>');
});

//MEU DESEMPENHO
$('div#icons_performance').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn fast">Unidades</p>');
});
$('div#icons_performance').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg">Meu desempenho</p>');
});

//MEUS AMIGOS
$('div#icons_friends').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn fast">Unidades</p>');
});
$('div#icons_friends').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg">Meus amigos</p>');
});


//DICIONÁRIO
$('div#icons_search').hover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg" class="animated fadeIn fast">Unidades</p>');
});
$('div#icons_search').mouseover(function () {
    $('div#text_menu').html('<p id="icon_menu_lg">Dicionário</p>');
});

//Meu perfil
$('div#option-menu-perfil').hover(function () {
    $('div#option-menu-perfil').html('Meu perfil');
});
$('div#option-menu-perfil').mouseover(function () {
    $('div#option-menu-perfil').html('My profile');

});

//Meus amigos
$('div#option-menu-friends').hover(function () {
    $('div#option-menu-friends').html('Meus amigos');
});
$('div#option-menu-friends').mouseover(function () {
    $('div#option-menu-friends').html('My friends');
});

//Meu desempenho
$('div#option-menu-performance').hover(function () {
    $('div#option-menu-performance').html('Meu desempenho');
});
$('div#option-menu-performance').mouseover(function () {
    $('div#option-menu-performance').html('My performance');
});
