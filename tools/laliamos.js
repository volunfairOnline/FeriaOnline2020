//(funcion)(){
    var laliamos = document.getElementById('laliamos'),
		nombre_ong = laliamos.nombre_ong,
		email_ong = laliamos.email_ong,		
		error = document.getElementById('error');
function validarNombre(e){
    if(nombre_ong.value == '' || nombre_ong == null){
        console.log('Completa el nombre');
        error.style.display = 'block';
        error.innerHTML = error.innerHTML + '<li>Ingresa Un Nombre</li>';
        e.preventDefault();
}else{
    error.style.display='none';
}
}

function validarCorreo(e){
     if(email_ong.value == '' || email_ong == null){
        console.log('Completa el correo');
        error.style.display = 'block';
        error.innerHTML = error.innerHTML + '<li>Ingresa Un Email</li>';
        e.preventDefault();
}else{
    error.style.display='none';
}
}


function validarForm(e){
   error.innerHTML = '';
   error.style.display = 'block';
   validarNombre(e);
   validarCorreo(e);
 
}


laliamos.addEventListener('submit', validarForm);

//}())