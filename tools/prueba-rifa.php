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
			//id : 68,
			idField : 'id_rifa',
			dbTable : 'rifa',
			timeField : 'fecha_inscripcion',
			mode : 'create',
			okMess : 'Se ha incluido el nuevo artículo de la rifa',
			errMess : 'No "dbTable" or "timeField" specified! '
				+ '<a href="mailto:&#105;&#110;&#102;&#111;&#64;&#118;&#111;&#108;&#117;&#110;&#102;&#97;&#105;&#114;&#46;&#111;&#114;&#103;?Subject=Form%20Config%20Error">'
				+ 'Contact this site admin</a> to fix it.'
		},
		// --- Form Button
		new button ({
			id : 'boton1',
			defaultTxt : '¡Enviar tu inscripción!',
			options : {
				style : 'color: blue; font-size : 1em;'
			}
		}),
		// --- Form fields
		new field ({
			type : 'input',
			id : 'articulo_rifa',
			dbTable: 'rifa',
			label : 'Artículo a incluir: <br />'
		}),
		new field ({
			type : 'text',
			id : 'empresa_rifa',
			label : 'Empresa que lo cede: <br />'
		}),
		new field ({
			type : 'textarea',
			id : 'descripcion_rifa',
			label : 'Descripción del artículo: <br />'
		}),
		new field ({
			type : 'text',
			id : 'foto_rifa',
			label : 'URL a la foto del artículo: <br />'
		}),
		new field ({
			type : 'text',
			id : 'instagram_rifa',
			label : 'URL a perfil de instagram: <br />'
		}),
		new field ({
			type : 'text',
			id : 'twitter_rifa',
			label : 'URL a perfil de twitter: <br />'
		}),
		new field ({
			type : 'text',
			id : 'rrss_rifa',
			label : 'URL a otra RRSS: <br />'
		}),
		new field ({
			type : 'text',
			id : 'telefono_rifa',
			label : 'Teléfono de contacto: <br />'
		}),
		new field ({
			type : 'text',
			id : 'email_rifa',
			label : 'Email de contacto: <br />'
		}),

		// --- Array with the options
		options = {
			method : 'POST',
			id : 'registroRifa'
		}
	);
	
	form1.makeHTML('formulario');
</script>

<div id="vuelta"></div>

</body>
</html>