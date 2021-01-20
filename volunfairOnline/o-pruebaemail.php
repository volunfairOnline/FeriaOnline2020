<?php


// --- Archivo con las funciones de configuración (º, pie, ...)
include ('./scripts/o-config.php');

// --- Escribimos las cabeceras
escribe_cabecera();


?>
    <div class="c-content-title-1">
    <h3 class="c-font-uppercase c-center c-font-bold">Patrocinadores</h3>
    <div class="c-line-center c-theme-bg"></div>
    </div>


    <!-- BEGIN: PAGE CONTAINER -->
    <!-- BOTÓN -->
    <div class="c-content-box c-size-md c-bg-white">     
        <div class="container">
            <label for="email">Introduce tu email:</label>
            <input type="email" id="email">
        
        </div>
    </div>


<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>