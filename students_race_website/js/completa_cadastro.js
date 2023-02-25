function preview() {
    var imagem = document.querySelector('input[name=user_image]').files[0];
    var prev = document.querySelector('img[name=user]');
    var prev_sm = document.querySelector('img[name=user_sm]');

    var reader = new FileReader();

    reader.onloadend = function() {
        prev.src = reader.result;
        prev_sm.src = reader.result;
    }
    if(imagem) {
        reader.readAsDataURL(imagem);
    }else{
        prev.src = "";
        prev_sm.scr = "";
    }
}
                        
function preview_sm() {
    var imagem = document.querySelector('input[name=user_image_sm]').files[0];
    var prev_sm = document.querySelector('img[name=user_sm]');
    var prev = document.querySelector('img[name=user]');

    var reader = new FileReader();

    reader.onloadend = function() {
        prev.src = reader.result;
        prev_sm.src = reader.result;
    }
    if(imagem) {
        reader.readAsDataURL(imagem);
    }else{
        prev.src = "";
        prev_sm.scr = "";
    }
}

$('#date_birth').datepicker({	
    format: "dd/mm/yyyy",
    language: "pt-BR"
});
