<?php 
	session_start();
	// --- Iniciar la clase de conexión a la base de datos
	require_once('./MySQLHandler.class.php');     
	require_once("./misconexiones.php");  

	// ---  Variable con los datos recibidos
	$consultaBusqueda = $_POST['valorBusqueda'];

	//Filtro anti-XSS
	$caracteres_malos = array("<", ">", "\"", "'", "/", "<", ">", "'", "/");
	$caracteres_buenos = array("& lt;", "& gt;", "& quot;", "& #x27;", "& #x2F;", "& #060;", "& #062;", "& #039;", "& #047;");
	$consultaBusqueda = str_replace($caracteres_malos, $caracteres_buenos, $consultaBusqueda);

	//Variable vacía (para evitar los E_NOTICE)
	$mensaje = "";

	// --- Abrir la base de datos con usuario visitante
	$sql = Abrir_base();

	// --- Comprueba si $consultaBusqueda no está vacía
	if (isset($consultaBusqueda)) {

		// --- De  la página obtenemos los datos del formulario escritos ya en formato MySQL
		$consultaBusquedaPais = $consultaBusqueda[0];
		$consultaBusquedaTipo = $consultaBusqueda[1];

		// --- Variable con el texto de la consulta
		$consulta_ong_texto = "SELECT DISTINCT nombre_ong, descripcion_ong, voluntariado_ong, email_ong,logo_ong
		FROM `ongs` , `voluntariado`
		WHERE ". $consultaBusquedaPais . "" . $consultaBusquedaTipo .
		" AND ong_voluntariado = id_ong;";

		echo $consulta_ong_texto;

		$consulta_ong = $sql->Select($consulta_ong_texto);

		// --- Copiar la consulta en una matriz de filas
		$fila_ong = $sql->matrizFilas($consulta_ong);

		// --- Contar el numero de filas de la tabla y liberar la consulta
		$nfilas_ong = $sql->getNFilas($consulta_ong);
		mysqli_free_result($consulta_ong);

		// --- Si no existe ninguna fila que sea igual a $consultaBusqueda, entonces mostramos el siguiente mensaje
		if ($nfilas_ong == 0) {
			echo '<div class="row">'."\n";
			echo '	<div class="col-md-12 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
			echo '		<p>No existe ninguna ONG que cumpla los criterios que has seleccionado :( <br />'."\n";
			echo '		Inténtalo de nuevo o ponte en <a href="./v-contactar">contacto</a> con nosotros</p>'."\n";
			echo '	</div>'."\n";
			echo '</div>'."\n";
			
		// --- Si existe, las mostramos todas (el siguiente código HTML muestra cómo aparece una de ellas; como es un bucle, todo se repite)
		} else {
           if($nfilas_ong%2==0){
			for ($i =0; $i < $nfilas_ong; $i=$i+2) {
				echo '<div class="row">'."\n";
				echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
				echo '		<img src = "./assets/base/img/volunfair/ong2/'.$fila_ong[$i]['logo_ong'].'"width="180" title="'.htmlspecialchars(stripslashes($fila_ong[$i]['nombre_ong'])).'" />'."\n";
				echo '		<p> <b>ONG</b>: '.$fila_ong[$i]['nombre_ong']."\n";
				echo '		<br>'."\n";
				echo '	</div>'."\n";
				echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
				echo '		<img src = "./assets/base/img/volunfair/ong2/'.$fila_ong[$i+1]['logo_ong'].'"width="180" title="'.htmlspecialchars(stripslashes($fila_ong[$i+1]['nombre_ong'])).'" />'."\n";
				echo '		<p> <b>ONG</b>: '.$fila_ong[$i+1]['nombre_ong']."\n";
				echo '		<br>'."\n";
				echo '	</div>'."\n";   
				echo '</div>'."\n";
				echo '<br />'."\n";
			}
		   }
		   else{
            for ($i =0; $i < $nfilas_ong-1; $i=$i+2) {
				echo '<div class="row">'."\n";
				echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
				echo '		<img src = "./assets/base/img/volunfair/ong2/'.$fila_ong[$i]['logo_ong'].'"width="180" title="'.htmlspecialchars(stripslashes($fila_ong[$i]['nombre_ong'])).'" />'."\n";
				echo '		<p> <b>ONG</b>: '.$fila_ong[$i]['nombre_ong']."\n";
				echo '		<br>'."\n";
				echo '	</div>'."\n";
				echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
				echo '		<img src = "./assets/base/img/volunfair/ong2/'.$fila_ong[$i+1]['logo_ong'].'"width="180" title="'.htmlspecialchars(stripslashes($fila_ong[$i+1]['nombre_ong'])).'" />'."\n";
				echo '		<p> <b>ONG</b>: '.$fila_ong[$i+1]['nombre_ong']."\n";
				echo '		<br>'."\n";
				echo '	</div>'."\n";   
				echo '</div>'."\n";
				echo '<br />'."\n";
			}
                echo '<div class="row">'."\n";
				echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
				echo '		<img src = "./assets/base/img/volunfair/ong2/'.$fila_ong[$i]['logo_ong'].'"width="180" title="'.htmlspecialchars(stripslashes($fila_ong[$i]['nombre_ong'])).'" />'."\n";
				echo '		<p> <b>ONG</b>: '.$fila_ong[$i]['nombre_ong']."\n";
				echo '		<br>'."\n";
				echo '	</div>'."\n";
                echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
				echo '	</div>'."\n";   
				echo '</div>'."\n";
				echo '<br />'."\n";

		   }	
		}
	}
	
 ?>