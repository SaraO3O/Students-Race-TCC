$(function(){
	$("#search").click(function(){
		
		var pesquisa = $("#word").val();
		if(pesquisa != ''){
			var dados = {
				word : pesquisa
			}		
			$.post('back_busca_word.php', dados, function(retorna){
				$("#result").html(retorna);
			});
		}else{
			$("#result").html('');
		}		
	});
});