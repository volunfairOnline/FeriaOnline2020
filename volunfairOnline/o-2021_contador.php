<?php


// --- Archivo con las funciones de configuración (º, pie, ...)
include ('./scripts/o-config.php');

// --- Escribimos las cabeceras
escribe_cabecera(1);

?>

<link href="assets/base/css/o-main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<!-- Estilos del contador -->
<style>
    .countdown-number {
        background: rgb(151 152 152 / 20%);
        border-color: white;
        border-style: solid;
        border-radius: 10px;
    }
    .countdown-time {
        background: none;
    }
    .countdown-text {
        color: #ffffff;
    }
</style>

<header>
    <div class="overlay"></div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop" class="videoprinc">
        <source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">
    </video>
    <div class="container h-100">
        <div class="d-flex h-100 text-center align-items-center">
        <div class="w-100 text-white opciones">
            <div class="opciones-header">
                <h1 class="c-content-title-1 c-font-80" style="text-shadow: 2px 1px white;">VOLUNFAIR 2021</h1>
                <div class="c-font-30">¡Bienvenido a la edición 2021 de la feria de voluntariado!</div>
            </div>

            <div class="c-line-center c-theme-bg"></div>
            <br /><br /><br />

            <!-- BEGIN: Contador -->
            <div class="container">
                <div id="deadline-message" class="deadline-message">
                    ¡Ya está aquí!
                </div>
                <div id="countdown" class="countdown">
                    <div class="countdown-number">
                        <span class="days countdown-time"></span>
                        <span class="countdown-text">Días</span>
                    </div>
                    <div class="countdown-number">
                        <span class="hours countdown-time"></span>
                        <span class="countdown-text">Horas</span>
                    </div>
                    <div class="countdown-number">
                        <span class="minutes countdown-time"></span>
                        <span class="countdown-text">Minutos</span>
                    </div>
                    <div class="countdown-number">
                        <span class="seconds countdown-time"></span>
                        <span class="countdown-text">Segundos</span>
                    </div>
                </div>
            </div>
            <!-- END: Contador -->

            <br /><br /><br /><br />
            
            <!-- BEGIN: Enlace Airmeet -->
            <div class="container">
                <a href="https://www.airmeet.com/e/ba4d3930-5669-11eb-9735-6d6703844e50" target="blank" role="button" class="btn btn-light btn-lg btn-block">
                    <div class="c-font-25">Inscripción entidades</div>
                </a>
            </div>
            <!-- END: Enlace Airmeet -->
            <br /><br /><br/>
        </div>
        </div>
    </div>
</header>

<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>