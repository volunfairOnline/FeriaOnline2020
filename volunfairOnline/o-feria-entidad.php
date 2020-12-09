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
    //$rs=$consulta_pagina[6];

// --- Escribimos las cabeceras
escribe_cabecera();

?>
        
        <!-- BEGIN: PAGE CONTAINER -->
        <div class="c-layout-page" style="background-color:#FF6949">
        <!--<body style="background-color:#FF6949">-->
        <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background:#515151">
            </div>
            <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
            
           <!-- <div class="c-content-box c-size-md ">-->
			
                    <?php
                    //'.$logo].'  '.$nombre.'  '.$color.'
                    echo '<div class="row  align-items-center">'."\n";
                            /*echo '	<div class="col-md-2 ">'."\n";
                            echo '	</div>'."\n";
                            echo '	<div class="col-md-8 c-fonts-bold c-font-center c-content-media-1 ">'."\n";*/
                            echo '	<div class="col-md-2 c-content-media-1 ">'."\n";
                            echo '      <img width=100% src ="./assets/base/img/volunfair/ong2/caritas.jpg" />'."\n";
                            echo '	</div>'."\n";
                            //echo '	<div class="col-md-2">'."\n";
                            //echo '	</div>'."\n";
                            echo '	<div class="col-md-10 c-bg-white c-font-bold c-font-center c-font-34 c-font-uppercase c-margin-b-30">'."\n";
                            echo '      <b>Caritas</b>'."\n";
                            //echo '	</p>'."\n";
                            echo '	</div>'."\n";
                            echo '	</div>'."\n";
                            
                    echo '	</div>'."\n";
                    ?>
                    <!-- BEGIN: ONG -->

                <div class="parallax-window" data-parallax="scroll" data-bleed="100" data-speed="0.2" data-image-src="./assets/base/img/volunfair/web/en_construccion_astronautas.png">
                    <div class="c-content-box c-size-md ">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="c-content-media-1 c-bordered wow animated fadeInRight" style="min-height: 380px;">
                                        <div class="c-content-title-1">
                                            <h3 class="c-font-uppercase c-font-bold">hola</h3>
                                            <div class="c-line-left c-theme-bg"></div>
                                        </div>
                                        
                                        <p>
                                            hola
                                        </p>
        
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: ONG -->

            <!-- END: PAGE CONTENT -->
            </div>
        
        <!--</body>-->
        </div>
        <!-- END: PAGE CONTAINER -->
<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>