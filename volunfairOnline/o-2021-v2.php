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
    <style>
        div h1 b {
            color: #FFFFFF;
        }
        div div h2 {
            color: #FFFFFF 
        }
    </style>
    
    <div class="container h-100">
        <div class="d-flex h-100 text-center align-items-center">
        <div class="w-100 text-white opciones">
            <div class="opciones-header">
                <h1 class="c-content-title-1 c-font-30"><b>VOLUNFAIR 2021</b></h1>
                <h2>¡Bienvenido a la edición 2021 de la feria de voluntariado!</h2>
            </div>
            <div class="c-line-center c-theme-bg"></div>

            <!-- BEGIN: Enlaces a las distintas páginas -->
            <div class="container">
                <!--- BEGIN: Tarjeta con contenido -->
                <div class="container row">
                    <div class="col-md-3"></div>
                    <!--Acceso stands-->
                    <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                        <a href=""> 
                            <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/stands.svg" alt="FeriaOnline">
                        </a>
                        <div class="card-body-vf">
                            <h3><a href="https://www.airmeet.com/e/b5f3a1b0-64d0-11eb-b018-89afae04ce4f"><b>Stands</a></b></h3> 
                            <p class="card-text"><b>Contanta en vivo</b> con las ONG's y preguntales por aquellas inquietudes que tengas</p>
                        </div>
                    </div>

                    <!--Eventos-->
                    <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                        <a href=""> 
                            <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/eventos.svg" alt="Eventos">
                        </a>
                        <div class="card-body-vf">
                            <h3><a href="-/v-viene"><b>Eventos</a></b></h3> 
                            <p class="card-text">Unete a las charla con <b>Toni Nadal</b>, <b>Los Ángeles de Kenia</b> y <b>Pablo España</b></p>
                        </div>
                    </div>
                </div>

                    <!--Rifa-->
                    <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                        <a href="./o-rifa">
                            <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/rifa.svg" alt="Rifa">
                        </a>
                        <div class="card-body-vf">
                            <h3><a href="./o-rifa"><b>Rifa</b></a></h3>
                            <p class="card-text"><b>Disfruta</b> de alguno de nuestros premios</p>
                        </div>
                    </div>

                    <!--Entidades-->
                    <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                        <a href="./o-entidades">
                            <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/ayuda.svg" alt="Entidades">
                        </a>
                        <div class="card-body-vf">
                            <h3><a href="./o-entidades"><b>Entidades</b></a></h3>
                            <p class="card-text">Conoce a las <b>ONGs</b> presentes en la feria. ¡<b>Inscríbete</b> online a ellas!</p>
                        </div>
                    </div>

                    <!--Patrocinadores-->
                    <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                        <a href="./o-patrocinadores">
                            <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/patrocinadores.svg" alt="Patrocinadores">
                        </a>
                        <div class="card-body-vf">
                            <h3><a href="./o-patrocinadores"><b>Patrocinadores</a></b></h3>
                            <p class="card-text">Conoce a las empresas que han ayudado a hacer realidad este sueño</p>
                        </div>
                    </div>

                    <!--Web-->
                    <div class="card tarjeta-enlace text-center border-secondary mb-3 col-md-3">
                        <a href="./index">
                            <img class="card-img-top" src="./assets/base/img/volunfair/online-logos/web.svg" alt="Web VF">
                        </a>
                        <div class="card-body-vf">
                            <h3><a href="./index"><b>Nuestra Web</a></b></h3>
                            <p class="card-text">Visita nuestra web para encontrar toda la información y preguntarnos cualquier duda</p>
                        </div>
                    </div>
                
                <!--- END: Tarjeta con contenido -->

                <!--- BEGIN: Tarjeta con contenido 
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
                 END: Tarjeta con contenido -->

            </div>
            <!-- END: Enlaces a las distintas páginas -->
        </div>
        </div>
    </div>
    <br /><br /><br /><br />
            
    <!-- BEGIN: Enlace Airmeet -->
    <div class="container">
        <a href="https://www.airmeet.com/e/b5f3a1b0-64d0-11eb-b018-89afae04ce4f" target="blank" role="button" class="btn btn-light btn-lg btn-block">
            <div class="c-font-25">Inscripción entidades</div>
        </a>
    </div>
    <!-- END: Enlace Airmeet -->
    <br /><br /><br/>
    </header>

<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>