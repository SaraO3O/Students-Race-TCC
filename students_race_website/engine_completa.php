<?php
include_once("painel_admin/conexao.php");
$motor1 = mysqli_real_escape_string($link, $_POST['comando']);

$comando = "SELECT * FROM dicionario WHERE palavra LIKE '%".$motor1."%'";


$resultado = mysqli_query($link, $comando);
    
$data = array();

if(mysqli_num_rows($resultado) > 0){
    while( $linha = mysqli_fetch_assoc($resultado)){
        $data[] = $linha["palavra"];
    }
    echo json_encode($data);
}
?>