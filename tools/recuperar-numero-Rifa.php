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
    <title>Sorteo Rifa</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src = "../volunfairOnline/assets/plugins/intforms/intForms.js"></script>
</head>
<body>
<form id="laliamos" name="laliamos" method="POST" class="form-register" enctype="multipart/form-data">	
	<h2>Mirar mi número de la rifa:</h2><br>
	<label>Introduce su teléfono: <input type="tel" name="telefono" placeholder="Número de teléfono"></label>
    <input type="submit" name="recuperar" value="recuperar"><br><br>
</form>
</body>
</html>
<?php
	if(isset($_POST['recuperar'])){
		$telefono =$_POST["telefono"];		
		$result =  mysqli_query($enlace2, "SELECT  num_rifa FROM sorteorifa WHERE movil_rifa='$telefono'");
		while ($row = $result->fetch_assoc()) {
			echo "El número de teléfono: <strong>".$telefono."</strong> tiene asignado el número de la rifa: <strong>".$row['num_rifa']."</strong><br>";
		}	
	}
?>