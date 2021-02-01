<?php
	$servidor="localhost";
	$usuario="root";
	$clave="";
	$baseDeongs="laliamos";

	$enlace2 = mysqli_connect($servidor, $usuario, $clave, $baseDeongs);	
	mysqli_set_charset($enlace2, 'utf8');
	if(!$enlace2){
		echo"Error en la conexion con el servidor";
	}
?>

<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro en sorteo Rifa</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src = "../volunfairOnline/assets/plugins/intforms/intForms.js"></script>
	<style type="text/css">
	  .exito { color: green; }
	  .error { color: red; }
	</style>
</head>
<body>
<form id="laliamos" name="laliamos" method="POST" class="form-register" enctype="multipart/form-data">
	<h2>Registro para la rifa:</h2><br>
	<label>Teléfono: <input type="tel" name="movil_rifa" placeholder="número de teléfono"></label>
    <input type="submit" name="enviar" value="enviar"><br><br>	
</form>
</body>
</html>
<?php
	if(isset($_POST['enviar'])){
		$movil_rifa =$_POST["movil_rifa"];
		$insertanum =	"INSERT INTO sorteorifa (movil_rifa, num_rifa) VALUES ('$movil_rifa',floor(rand()*10000)+1)";
		mysqli_query($enlace2, $insertanum);				
		if($insertanum )
			echo'<h1 class="exito">Se ha guardado correctamente</h1><br>';
		else
			echo'<h1 class="error">No se ha guardado correctamente</h1><br>';		
	}	
?>
