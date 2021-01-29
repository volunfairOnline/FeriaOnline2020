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
        <div class="c-layout-page" style="background-color:#FFFFFF">
        <!--<body style="background-color:#FF6949">-->
        <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background:#F01539;">
            </div>
            <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
            
           <!-- <div class="c-content-box c-size-md ">-->
			
                    <?php
                    //'.$logo].'  '.$nombre.'  '.$color.'
                    echo '<div class="row  align-items-center">'."\n";
                            echo '	<div class="col-md-2 c-content-media-1 ">'."\n";
                            echo '      <img width=100% src ="./assets/base/img/volunfair/ong2/caritas.jpg" />'."\n";
                            echo '	</div>'."\n";
                            echo '  <div class="col-md-10">'."\n";
                            echo '	    <div class="c-font-bold c-font-center c-font-80 c-font-uppercase c-margin-b-30">'."\n";
                            echo '          <b>Caritas</b>'."\n";
                            echo '	    </div>'."\n";
                            echo '	</div>'."\n";  
                    echo '	</div>'."\n"; 
                    ?>
        </div>

        <!-- BEGIN: ONG -->
        <div class="parallax-window" data-parallax="scroll" data-bleed="100" data-speed="0.2" data-image-src="./assets/base/img/volunfair/web/en_construccion_astronautas.png">
            <div class="c-content-box c-size-md ">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- BEGIN: Descripción breve -->
                            <div class="c-content-media-1 c-bordered wow animated fadeInRight">
                                <div class="row">
                                    <div class="col-md-9">
                                        <div>
                                            <p>
                                            La Fundación Amoverse nace en el año 2001 en el barrio madrileño del Pozo del Tío Raimundo (Vallecas) con el fin de acompañar a los niños/as, adolescentes, jóvenes y sus familias en su inserción social y laboral, impulsando oportunidades de aprendizaje, crecimiento e integración. Hoy contamos con diferentes centros en Vallecas y Tetuan, Madrid, desde donde llevamos a cabo programas integrales de Acompañamiento Famliar, de Intervención Socio-educativa e Intervención socio-laboral.                              
                                            </p>
                                        </div>    
                                        <br />
                                        <div>
                                            <div class="col-sm-6">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <i class="fas fa-info-circle c-font-25 c-font-center" style="line-height: unset;"></i>
                                                    </div>
                                                    <div class="col-md-10">
                                                        América, Oceanía, España
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="row align-items-center c-icons-center">
                                            <i class="fas fa-info-circle c-font-center" style="line-height: unset; font-size: 150px"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END: Descripción breve -->

                            <br />
                            
                            <!-- BEGIN: Video -->
                            <div class="embed-responsive embed-responsive-16by9 wow animated fadeInLeft">
                                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/p4rIugbwI9E" allowfullscreen></iframe>
                            </div>
                            <!-- END: Video -->
                            
                            <br />

                            <!-- BEGIN: Descripción detallada -->
                            <div class="c-content-media-1 c-bordered wow animated fadeInRight" style="min-height: 380px;">
                                <div class="c-content-title-1 c-center">
                                    <h3 class="c-font-uppercase c-font-bold">Descripción de la entidad</h3>
                                    <div class="c-line-center c-theme-bg"></div>
                                </div>

                                <p>
                                    Atendiendo a las necesidades familiares compartidas y específicas de cada barrio, se quiere ofrecer un espacio donde compartir, crecer y aprender unos/as de otros/as. A través del vínculo se va construyendo la propia historia con las fortalezas y dificultades de cada uno atendiendo al área emocional, cognitiva, educativa y social. 
                                </p>

                                <p>
                                    Todo esto se lleva a cabo en espacios compartidos a través de actividades, donde convivir, relacionarse e integrarse en el contexto, de manera participativa contando con personas voluntarias, para la búsqueda de la justicia y el cambio social. Sin el voluntariado este sueño no sería posible. 
                                </p>

                                <p>
                                    Durante el curso escolar trabajamos con los menores por las tardes desde el espacio de aprendizaje (actividades donde poder desarrollar las competencias que permitan al menor adquirir los conocimientos requeridos a su edad y poder despertar el interés y la curiosidad por aprender) y el espacio de crecimiento (actividades que busquen tanto el autoconocimiento y crecimiento personal como la búsqueda de disfrute y crecimiento a través del juego, las actividades manuales y la relación con los compañeros/as). Durante el verano se realizan los campamentos En función de la edad las actividades se adaptan así que si estás interesado estaremos encantados de ampliarte la información. 
                                </p>

                                <p>
                                    Ademas puedes ser voluntario en el área de formación y acompañamiento laboral con jóvenes y adultos y dar apoyo al equipo técnico en gestión, comunicación... 
                                </p>

                            </div>
                            <!-- END: Descripción detallada -->
                            
                            <br />

                            <!-- BEGIN: Contacto -->
                            <div class="c-content-media-1 c-bordered wow animated fadeInLeft">
                                <div class="c-content-title-1 c-center">
                                    <h3 class="c-font-uppercase c-font-bold">Contacta con Caritas</h3>
                                    <div class="c-line-center c-theme-bg"></div>
                                </div>
                                
                                <!--- El div class="row" evita que el div contenedor se quede pequeño -->
                                <div class="row">
                                    <div class="col-sm-6 wow animated zoomIn">
                                        <div class="c-content-title-2 c-center">
                                            <h3 class="c-font-uppercase c-font-bold">Redes sociales</h3>
                                            <div class="c-line-center c-theme-bg"></div>
                                        </div>
                                        
                                        <p>
                                            <a href="" target="_blank">
                                                <img src="./assets/base/img/volunfair/face.png" alt="Facebook" title="Facebook" />
                                            </a>
                                            <a href="" target="_blank">
                                                Facebook
                                            </a>
                                            <br />
                                            <a href="" target="_blank">
                                                <img src="./assets/base/img/volunfair/twitter.png" alt="Twitter" title="Twitter" />
                                            </a>
                                            <a href="" target="_blank">
                                                Twitter
                                            </a>
                                            <br />
                                            <a href="" target="_blank">
                                                <img src="./assets/base/img/volunfair/instagram.png" alt="Instagram" title="Instagram" />
                                            </a>
                                            <a href="" target="_blank">
                                                Instagram
                                            </a>
                                            <br />
                                            <a href="" target="_blank">
                                                <img src="./assets/base/img/volunfair/web.png" alt="Página web" title="Página web" />
                                            </a>
                                            <a href="" target="_blank">
                                                Página web
                                            </a>
                                            <br />
                                            <a href="" target="_blank">
                                                <img src="./assets/base/img/volunfair/email.png" alt="Email" title="Email" />
                                            </a>
                                            <a href="" target="_blank">
                                                Email
                                            </a>
                                        </p>
                                    </div>
                                    
                                    <div class="col-sm-6 h-100 wow animated zoomIn">
                                        <div class="c-content-title-2 c-center">
                                            <h3 class="c-font-uppercase c-font-bold">Ve a visitarles</h3>
                                            <div class="c-line-center c-theme-bg"></div>
                                        </div>
                                        <!-- BEGIN: Google Maps-->
                                        <div id="map-container-google-1" class="z-depth-1-half map-container c-center embed-responsive embed-responsive-16by9">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3036.602428461876!2d-3.6940349195708913!3d40.439801568526036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1611592747151!5m2!1ses!2ses" frameborder="0" style="border:0;" allowfullscreen></iframe>
                                        </div>
                                        <!-- END: Google Maps-->
                                    </div>
                                </div>

                            </div>
                            <!-- END: Contacto -->
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