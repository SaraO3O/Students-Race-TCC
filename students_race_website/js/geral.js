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
