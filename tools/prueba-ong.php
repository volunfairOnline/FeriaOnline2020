<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src = "../volunfairOnline/assets/plugins/intforms/intForms.js"></script>
</head>

<body>

<div id="formulario">
</div>

<script>	
	var form1 = new form (
		// --- General settings of the form
		config = {
			id : 68,
			idField : 'id_ong',
			dbTable : 'ongs',
			timeField : 'fecha_inscripcion',
			mode : 'EDIT',
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
		// --- Array with the options
		options = {
			method : 'POST',
			id : 'inscripcionONG'
		}
	);
	
	form1.makeHTML('formulario');
</script>

<div id="vuelta"></div>

</body>
</html>