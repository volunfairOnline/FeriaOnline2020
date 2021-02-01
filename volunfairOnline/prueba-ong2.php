<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src = "../volunfairOnline/assets/plugins/intforms/intForms.js"></script>
<link rel="stylesheet" href="css/estilos.css">
</head>

<body>

<script>	
	var form1 = new form (
		// --- General settings of the form
		config = {
			//id : 68,
			idField : 'id_ong',
			dbTable : 'ongs',
			timeField : 'fecha_inscripcion',
			mode : 'create',
			okMess : 'Tú inscripción a VOLUNFAIR ha sido registrada con éxito! ¡Te contactaremos pronto!',
			errMess : 'No "dbTable" or "timeField" specified! '
				+ '<a href="mailto:&#105;&#110;&#102;&#111;&#64;&#118;&#111;&#108;&#117;&#110;&#102;&#97;&#105;&#114;&#46;&#111;&#114;&#103;?Subject=Form%20Config%20Error">'
				+ 'Contact this site admin</a> to fix it.'
		},
		// --- Form Button
		new button ({
			id : 'boton1',
			defaultTxt : '¡Enviar tu inscripción!',
			options : {
				style : 'color: blue; font-size : 2em;'
			}
		}),
		// --- Form fields
		new field ({
			type : 'input',
			id : 'nombre_ong',
			dbTable : 'ongs',
			label : 'Nombre de la ONG: <br />'
		}),
		new field ({
			type : 'textarea',
			id : 'descripcion_ong',
			label : 'Descripción: <br />'
		}),		
		new field ({
			type : 'wym-editor',
			id : 'voluntariado_ong',
			label : 'Descripción del proyecto: <br />'
		}),
		new field ({
			type : 'email',
			id : 'email_ong',
			label : 'Descripción: <br />'
		}),
		new field ({
			type : 'checkbox',
			id : 'tipo_proyecto',
			dbTable : 'voluntariado_proyecto',
			dbAuxTable : 'proyecto',
			dbPrmKey : 'id_proyecto',
			label : 'TIpo de voluntariado: <br />'
		}),
		new field ({
			type : 'checkbox',
			id : 'pais_lugar',
			dbTable : 'voluntariado_lugar',
			dbAuxTable : 'lugar',
			dbPrmKey : 'id_voluntariado',
			label : 'Lugares que ofrecen: <br />'
		}),
		new field ({
			type : 'text',
			id : 'rs_ong',
			label : 'Instagram: <br />'
		}),
		// --- Array with the options
		options = {
			method : 'POST',
			id : 'inscripcionONG'
		}
	);
/* form1.makeHTML('formulario'); */
</script>
<div class="c-content-box c-size-md c-bg-white">
    <div class="container">
		<section class="form_wrap">
			<section class="ong_info"></section>		
			<form method="post" action="#" id="inscripcionONG" class="form_contact">						
				<div class="row">
					<div class="col one-half">
						<h3>Nombre</h3>
						<div class="form-group">
							<input type="text" id="nombre_ong" name="nombre_ong" placeholder="nombre de ong" value="" class="form-control c-square c-theme input-lg w-form">
						</div>
						<h3>Descripción</h3>
						<div class="form-group">
							<input type="textarea" id="descripcion_ong" name="descripcion_ong" placeholder="descripcion de ong" value="" class="form-control c-square c-theme input-lg w-form"> 
						</div>			
						<h3>Tipo de voluntariado:</h3>
						<div class="form-group m-checkbox">
							  <input type="checkbox" id="tipo_proyecto1" name="tipo_proyecto1" value="Ancianos">
								<label for="tipo_proyecto1">Ancianos</label><br>
							  <input type="checkbox" id="tipo_proyecto2" name="tipo_proyecto2" value="Asia">
								<label for="tipo_proyecto2">Sin recursos</label><br>
							  <input type="checkbox" id="tipo_proyecto3" name="tipo_proyecto3" value="Oceania">
								<label for="tipo_proyecto3">Enfermos</label><br>
							  <input type="checkbox" id="tipo_proyecto4" name="tipo_proyecto4" value="America del Sur">
								<label for="tipo_proyecto4">Cooperación Social</label><br>
							  <input type="checkbox" id="tipo_proyecto5" name="tipo_proyecto5" value="Centroamerica">
								<label for="tipo_proyecto5">Misión</label><br>
							  <input type="checkbox" id="tipo_proyecto6" name="tipo_proyecto6" value="America del norte">
								<label for="tipo_proyecto6">Niños</label><br>
							  <input type="checkbox" id="tipo_proyecto7" name="tipo_proyecto7" value="Africa">
								<label for="tipo_proyecto7">Discapacitados</label><br>
							  <input type="checkbox" id="tipo_proyecto8" name="tipo_proyecto8" value="Madrid">
								<label for="tipo_proyecto8">Animales</label><br>
							  <input type="checkbox" id="tipo_proyecto9" name="tipo_proyecto9" value="Europa">
								<label for="tipo_proyecto9">Proyecto científico</label><br>
							  <input type="checkbox" id="tipo_proyecto10" name="tipo_proyecto10" value="Otro">
								<label for="tipo_proyecto10">Otros</label><br>				  				
						</div>
						<h3>Redes sociales</h3>
						<div class="form-group">
							<input type="text" id="rs_ong" name="rs_ong1" placeholder="instagram" placeholder="redes sociales" value="" class="form-control c-square c-theme input-lg w-form"> 
							<input type="text" id="rs_ong" name="rs_ong2" placeholder="twitter" placeholder="redes sociales" value="" class="form-control c-square c-theme input-lg w-form">
						</div>						  
					</div>
					<div class="col one-half last">
						<h3>Email</h3>
						<div class="form-group">
							<input type="email" id="email_ong" name="email_ong" placeholder="email" value="" class="form-control c-square c-theme input-lg w-form"> 
						</div>
						  <h3>Descripción del proyecto</h3>
						<div class="form-group">
							<input type="wym-editor" id="voluntariado_ong" name="voluntariado_ong" placeholder="voluntariado de ong" value="" class="form-control c-square c-theme input-lg w-form"> 
						</div>
						<h3>Lugares que ofrecen</h3>
						<div class="form-group m-checkbox">
							  <input type="checkbox" id="pais_lugar1" name="pais_lugar1" value="España">
								<label for="pais_lugar1">España</label><br>
							  <input type="checkbox" id="pais_lugar2" name="pais_lugar2" value="Asia">
								<label for="pais_lugar2">Asia</label><br>
							  <input type="checkbox" id="pais_lugar3" name="pais_lugar3" value="Oceania">
								<label for="pais_lugar3">Oceanía</label><br>
							  <input type="checkbox" id="pais_lugar4" name="pais_lugar4" value="America del Sur">
								<label for="pais_lugar4">América del Sur</label><br>
							  <input type="checkbox" id="pais_lugar5" name="pais_lugar5" value="Centroamerica">
								<label for="pais_lugar5">Centroamérica</label><br>
							  <input type="checkbox" id="pais_lugar6" name="pais_lugar6" value="America del norte">
								<label for="pais_lugar6">América del norte</label><br>
							  <input type="checkbox" id="pais_lugar7" name="pais_lugar7" value="Africa">
								<label for="pais_lugar7">África</label><br>
							  <input type="checkbox" id="pais_lugar8" name="pais_lugar8" value="Madrid">
								<label for="pais_lugar8">Madrid</label><br>
							  <input type="checkbox" id="pais_lugar9" name="pais_lugar9" value="Europa">
								<label for="pais_lugar9">Europa</label><br>
							  <input type="checkbox" id="pais_lugar10" name="pais_lugar10" value="Otro">
								<label for="pais_lugar10">Otro</label><br>
						 </div>	
						 <div class="form-group w-form3">
							<input type="text" id="rs_ong" name="rs_ong3" placeholder="facebook" placeholder="redes sociales" value="" class="form-control c-square c-theme input-lg w-form"> 
							<input type="text" id="rs_ong" name="rs_ong4" placeholder="página web" placeholder="redes sociales" value="" class="form-control c-square c-theme input-lg w-form">
						</div>							
					</div>
					<div class="col one-third">
						<input name="send" type="button" value="Enviar inscripción" id="id_ong"/></input>
					</div>
				</div>
			</form>    
		</section>
	</div>
</div>
<div id="vuelta"></div>
</body>
</html>