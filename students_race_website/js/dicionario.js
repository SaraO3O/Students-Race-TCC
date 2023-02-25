$(window).load(function () {  
    $('div#modal-footer-dictionary').hide(0000);
    $('div#search').hide();
});

$('button#search').click(function () {
    if ($('input#word').val() != "") {
        $('div#input-search').slideUp(0250);
        $('div#search').delay(0250).slideDown(0250);
        $('div#modal-footer-dictionary').delay(0250).slideDown(0250);
    } 
});

$('div#button-dictionary').click(function () {
    $('div#search').slideUp(0250);
    $('div#modal-footer-dictionary').slideUp(0250);   
    $('div#input-search').delay(0250).slideDown(0250);
 
});

$('i#close-modal').click(function () {
    $('div#input-search').slideDown(0250);
    $('div#search').slideUp(0250);
    $('div#modal-footer-dictionary').slideUp(0250);
 
});

//Meu desempenho
$('div#button-dictionary').hover(function () {
    $('div#button-dictionary').html('Pesquisar outra palavra');
});
$('div#button-dictionary').mouseover(function () {
    $('div#button-dictionary').html('Search another word');
});