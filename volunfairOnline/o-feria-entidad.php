<?php

// --- Archivo con las funciones de configuración (cabeceras, pie, ...)
include ('./scripts/o-config.php');

//consulta de los paramétros para crear la pagina web de la ong

//$id_recibido_ong = $_GET["id"];

//$id_recibido_ong=$id_recibido[0];

//cambiar los nombre en función de la base de datos
    //$consulta_pagina= "SELECT nombre_ong, texto_ong, color_ong, logo_ong, imagen_ong, web_ong, rd_ong
    //FROM `bbdd`
    //WHERE id_ong =" . $id_recibido_ong .";";

    //$nombre=$consulta_pagina[0];
    //$texto=$consulta_pagina[1];
    //$color=$consulta_pagina[2];
    //$logo=$consulta_pagina[3];
    //$imagen=$consulta_pagina[4];
    //$web=$consulta_pagina[5];
    //$rsface=$consulta_pagina[6];
    //$rstwit=$consulta_pagina[7];
    //$rsinsta=$consulta_pagina[8];
    //$rslinked=$consulta_pagina[9];
    //$video=$consulta_pagina[10];
    $nombre="Caritas";
    $texto="Hola";
    $color="#ffffff";
    $logo="caritas.jpg";
    $imagen="en_construccion_astronautas.png";
    $web="https://www.volunfair.com/";
    $rsface="https://www.facebook.com/VolunFair/";
    $rstwit="https://twitter.com/volunfair";
    $rsinsta="https://www.instagram.com/volunfair/?hl=es";
    $rslinked="https://www.linkedin.com/company/volunfair/?originalSubdomain=es";
    $video="H_f5CpQbIV8";


// --- Escribimos las cabeceras
escribe_cabecera();

?>
        
    <!-- BEGIN: PAGE CONTAINER -->
        <?php
            echo '<div class="c-layout-page" style="background-color:'.$color.'">'."\n";
        ?>
        
        <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background:#F01539;">
            </div>
        <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->

        <!-- BEGIN PAGE CONTENT -->

            <!-- Logo ong -->
                <?php
                    echo '<div class="row  align-items-center">'."\n";
                        echo '	<div class="c-font-center col-md-2 c-content-media-1 ">'."\n";
                        echo '  <a title="Web '.$nombre.'" href="'.$web.'" target="_blank"><img width=75% src ="./assets/base/img/volunfair/ong2/'.$logo.'" /></a>'."\n";
                        echo '	</div>'."\n";
                        echo '	<div class="col-md-10 c-font-bold c-font-center c-font-34 c-font-uppercase c-margin-b-30">'."\n"; //No me termina de convencer el color c-bg-white
                            echo ' <h1 class="c-font-40 c-font-uppercase c-font-bold font-size: 50px">'.$nombre.'</h1>'."\n";
                        echo '	</div>'."\n";
                    echo '	</div>'."\n";             
            echo '	</div>'."\n";
                ?>
            <!-- End:logo ong -->

            <!-- Imagen y descripción -->
                <?php
                if ($imagen!=NULL){
                    echo ' <div class="parallax-window" data-parallax="scroll" data-bleed="100" data-speed="0.2" data-image-src="./assets/base/img/volunfair/web/'.$imagen.'">'."\n";
                    echo '<div class="c-content-box c-size-md ">'."\n";
                        echo ' <div class="container">'."\n";
                            echo ' <div class="row">'."\n";
                                echo ' <div class="col-md-12">'."\n";
                                    echo ' <div class="c-content-media-1 c-bordered wow animated fadeInRight" style="min-height: 380px;">'."\n";
                                        echo ' <div class="c-content-title-1">'."\n";
                                            echo ' <h3 class="c-font-uppercase c-font-bold">Actividades</h3>'."\n";
                                            echo ' <div class="c-line-left c-theme-bg"></div>'."\n";
                                        echo ' </div>'."\n";
                                                
                                        echo ' <p>'."\n";
                                            echo ''.$texto.' '."\n";
                                        echo ' </p>'."\n";
                
                                    echo ' </div>'."\n";
                                echo ' </div>'."\n";
                                        
                            echo ' </div>'."\n";
                        echo ' </div>'."\n";
                    echo ' </div>'."\n";
                    echo ' </div>'."\n";         
                } else {
                    echo '<div class="c-content-box c-size-md ">'."\n";
                        echo ' <div class="container">'."\n";
                            echo ' <div class="row">'."\n";
                                echo ' <div class="col-md-12">'."\n";
                                    echo ' <div class="c-content-media-1 c-bordered wow animated fadeInRight" style="min-height: 380px;">'."\n";
                                        echo ' <div class="c-content-title-1">'."\n";
                                            echo ' <h3 class="c-font-uppercase c-font-bold">Actividades</h3>'."\n";
                                            echo ' <div class="c-line-left c-theme-bg"></div>'."\n";
                                        echo ' </div>'."\n";
                                                
                                        echo ' <p>'."\n";
                                            echo ''.$texto.' '."\n";
                                        echo ' </p>'."\n";
                
                                    echo ' </div>'."\n";
                                echo ' </div>'."\n";
                                        
                            echo ' </div>'."\n";
                        echo ' </div>'."\n";
                    echo ' </div>'."\n";
                }
                ?>
            <!-- End:Imagen y descripción -->

            <!-- Video -->
            <?php 
                
                if($video!=NULL){
                    echo ' <div class="c-bg-white c-content-media-1">'."\n";
                        echo ' <div class="row c-center wow animated fadeInUp">'."\n";
                            echo ' <iframe width="784" height="441" src="https://www.youtube-nocookie.com/embed/'.$video.'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'."\n";
                        echo ' </div>'."\n";
                        echo ' <br />   '."\n";     
                    echo ' </div>'."\n";                   
                }
            ?>
            <!-- End:Video -->

            <!-- Web y RS -->
            <?php
            if($web!=NULL || ($rsface!=NULL || $rstwit!=NULL || $rsinsta!=NULL || $rslinked!=NULL)){
                echo ' <div class="c-content-box c-size-md c-bg-white">'."\n";
                echo ' <div class="row">'."\n";
                    echo ' <div class="c-center c-bg-white c-content-media-1">'."\n";
                        echo ' <div class="c-content-title-1 c-center">'."\n";
                            echo ' <h3 class="c-font-bold">También puedes contactar con la asociación a través de:</h3>'."\n";

                        echo '<ul class="c-center c-socials">'."\n";
                        echo ' <div class="c-center"'."\n";
                            $hayredes=0;
                            if($web!=NULL && ($rsface!=NULL || $rstwit!=NULL || $rsinsta!=NULL || $rslinked!=NULL)){
                                echo '<p><a href="'.$web.'" target="_blank">Visitar web de <strong>'.$nombre.'</strong></a> o las redes sociales </p>'."\n";
                                $hayredes = 1;
                            } else if ($web==NULL){ //No hay web
                                echo '<p>Visitar redes sociales de '.$nombre.' </p>'."\n";
                                $hayredes = 1;
                            } else { // No hay redes sociales
                                echo '<p><a href="'.$web.'" target="_blank">Visitar web de <strong>'.$nombre.'</strong></a></p>'."\n";
                            }
                        echo ' </div>'."\n";

                            if($hayredes==1){
                                if($rsface!=NULL){
                                    echo '<a href="'.$rsface.'" target="blank">
                                    <i class="icon-social-facebook"></i>
                                    </a>'."\n";
                                }
                                if($rstwit!=NULL){
                                    echo '<a href="'.$rstwit.'" target="blank">
                                    <i class="icon-social-twitter"></i>
                                    </a>'."\n";
                                }
                                if($rsinsta!=NULL){
                                    echo '<a href="'.$rsinsta.'" target="blank">
                                    <i class="fab fa-instagram"></i>
                                    </a>'."\n";
                                }
                                if($rslinked!=NULL){
                                    echo '<a href="'.$rslinked.'" target="blank">
                                    <i class="fab fa-linkedin"></i>
                                    </a>'."\n";
                                }
                            }
                        echo '</ul>'."\n";

                        echo ' </div>'."\n";
                    echo ' </div>'."\n";
                echo ' </div>'."\n";
                echo ' </div>'."\n";
            }
            ?>

        
            <!-- End:Web y RS -->

        <!-- END PAGE CONTENT -->                

        <!-- END: PAGE CONTAINER -->
<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>