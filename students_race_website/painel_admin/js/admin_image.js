function preview() {
    var imagem = document.querySelector('input[name=imagem]').files[0];
    var prev = document.querySelector('img[name=img_preview]');

    var reader = new FileReader();

    reader.onloadend = function() {
        prev.src = reader.result;
    }
    if(imagem) {
        reader.readAsDataURL(imagem);
    }else{
        prev.src = "";
    }
}