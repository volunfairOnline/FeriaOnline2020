<?php


// --- Archivo con las funciones de configuración (º, pie, ...)
include ('./scripts/o-config.php');

// --- Escribimos las cabeceras
escribe_cabecera(1);

?>

<link href="assets/base/css/o-main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <header>
    <div class="overlay"></div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop" class="videoprinc">
        <source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">
    </video>
    <div class="container h-100">
        <div class="d-flex h-100 text-center align-items-center">
        <div class="w-100 text-white opciones">
            <div class="opciones-header">
                <h1 class="c-content-title-1">VOLUNFAIR 2021</h1>
                <p>¡Bienvenido a la edición 2021 de la feria de voluntariado!</p>
            </div>
            <div class="c-line-center c-theme-bg"></div>

            <!-- BEGIN: Enlaces a las distintas páginas -->
            <div class="container">
                <!--- BEGIN: Tarjeta con contenido -->
                <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                    <a href="./o-entidades">
                        <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/charity.svg" alt="Entidades">
                    </a>
                    <div class="card-body-vf">
                        <h3><a href="./o-entidades">Entidades</a></h3>
                        <p class="card-text">Conoce a las 60 ONGs presentes en la feria. ¡Inscríbete online a ellas!</p>
                    </div>
                </div>
                <!--- END: Tarjeta con contenido -->
                <!--- BEGIN: Tarjeta con contenido -->
                <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                    <a href="./o-entidades">
                        <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/social-care.svg" alt="Entidades">
                    </a>
                    <div class="card-body-vf">
                        <details>
                            <summary><h3><a href="./o-entidades">Entidades</a>&nbsp;&nbsp;&nbsp;&darr;</h3></summary>
                            <p class="card-text">Conoce a las 60 ONGs presentes en la feria. ¡Inscríbete online a ellas!</p>
                        </details>
                    </div>
                </div>
                <!--- END: Tarjeta con contenido -->
            </div>
            <!-- END: Enlaces a las distintas páginas -->
        </div>
        </div>
    </div>
    </header>

<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>