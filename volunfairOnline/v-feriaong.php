<?php

// --- Archivo con las funciones de configuración (cabeceras, pie, ...)
include ('./scripts/config.php');

//consulta de los paramétros para crear la pagina web de la ong

$id_recibido_ong=$id_recibido[0];

//cambiar los nombre en función de la base de datos
$consulta_pagina= "SELECT nombre_ong, texto_ong, color_ong, logo_ong, imagen_ong, web_ong, rd_ong
FROM `bbdd`
WHERE id_ong =" . $id_recibido_ong .";";

$nombre=$consulta_pagina[0];
$texto=$consulta_pagina[1];
$color=$consulta_pagina[2];
$logo=$consulta_pagina[3];
$imagen=$consulta_pagina[4];
$web=$consulta_pagina[5];
$rs=$consulta_pagina[6];

// --- Escribimos las cabeceras
escribe_cabecera();

?>

        <!-- BEGIN: PAGE CONTAINER -->
        <div class="c-layout-page">
            <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center imagen-cabecera" style="background-image: url(assets/base/img/volunfair/mares/mar_002.jpg)">
>    
            <!--<div class="container">
				 
                    <div class="c-page-title c-pull-left">
                    	  <p class="c-font-uppercase c-font-bold c-font-white c-font-25 c-font-slim">Quiénes Somos</p>
                        <h4 class="c-font-white c-font-thin c-opacity-07"> Conócenos mejor </h4>
                    </div>
                </div>-->
                <!-- en 2019 se puso <div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="margin-top: 50px; opacity: 0;">
            </div>-->
            </div>
            <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
           
            <!-- BEGIN: PAGE CONTENT -->

            <!--Se han juntado Origen y Misión y Visión con Valores-->
            <!--Se han  retirado las imágenes v-quienes/mision y v-quienes/valores en favor de las imágenes con parallax-->

            <!-- BEGIN: ORIGEN Y MISION-->
            <div class="c-content-box c-size-md c-bg-white">
                <div class="container">
                    <div class="row">
                        <div class="parallax-window" data-parallax="scroll" data-image-src="assets/base/img/volunfair/v-quienes/IMG_07673.JPG"></div>
                        <div class="col-md-12">
                            <div class="c-content-media-1 c-bordered wow animated fadeInLeft" style="min-height: 380px;">
                                
                                
                                <div class="c-content-title-1">
                                   <h3 class="c-font-uppercase c-font-bold">Origen y Misión</h3>
                                   <div class="c-line-left c-theme-bg"></div>
                                </div>
								 
                                <p>
									VOLUNFAIR es un proyecto que comienza en 2016 con el sueño de dos universitarios: acercar el voluntariado a todos los jóvenes. 
									De esta manera, surge la idea de organizar en la universidad la que se ha convertido en la mayor feria joven de voluntariado de España. 
								</p>
								<p>
									A lo largo de los años han pasado por VOLUNFAIR miles de jóvenes, los cuales han sacado adelante proyectos de las más de 100 entidades sociales participantes.
									En la actualidad, somos un equipo de unos 50 jóvenes universitarios que, de manera totalmente altruista, trabajamos con muchísima ilusión para hacer VOLUNFAIR realidad. 
								</p>
                                <p>
                                    Ponemos en contacto a los jóvenes universitarios con proyectos solidarios en todo el mundo. 
								    De esta manera, VOLUNFAIR es la puerta que todos los universitarios, inquietos y con ilusión de ayudar a los demás, 
								    tienen para cambiar sus vidas.
                                </p>
                                <p>
								    Somos universitarios comprometidos con el mundo.  Buscamos que todos los jóvenes levanten la mirada de las pantallas para mirar a los demás, 
								    contribuyendo así a construir una juventud con conciencia social, que no queda jamás indiferente ante el sufrimiento de otros.
							    </p>
 
                            </div>
                        </div>
                       <!--<div class="col-md-12 wow  fadeInRight animated" style="visibility: visible; animation-name: fadeInRight; opacity: 1;"> 
                        	<img src="assets/base/img/volunfair/v-quienes/origen.jpg" alt="" width="100%"> -->  <!--AÑADIR FOTO-->                        </div>
                    </div>
                </div>
            </div>
            <!-- END: ORIGEN Y MISION-->
			
			<!-- BEGIN: VISION -->
            <div class="parallax-window" data-parallax="scroll" data-bleed="100" data-speed="0.2" data-image-src="assets/base/img/volunfair/v-quienes/IMG_07673.jpg">
            <div class="c-content-box c-size-md ">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="c-content-media-1 c-bordered wow animated fadeInRight" style="min-height: 380px;">
                                
                                
                                <div class="c-content-title-1">
                                   <h3 class="c-font-uppercase c-font-bold">Visión</h3>
                                   <div class="c-line-left c-theme-bg"></div>
                                 </div>
                                
								<p>
									En VOLUNFAIR creemos en una juventud comprometida, estamos convencidos del potencial transformador que tiene nuestra generación 
									y por eso apostamos por ello. 
								</p>

								<p>
									Además, creemos en el voluntariado como herramienta para humanizar la sociedad, huyendo del individualismo para encaminarnos 
									hacia un escenario en el que el bien común sea la máxima.
								</p>
                                <p>
								    Los valores de VOLUNFAIR están basados en un sólido pilar: el amor a los demás. 
								    Es capital reconocer en las personas aquello que las hace únicas. Por tanto, en VOLUNFAIR 
								    somos abanderados de la justicia social, la solidaridad y la generosidad.
							    </p>
 
                            </div>
                        </div>
						
                    </div>
                </div>
            </div>
            </div>
            <!-- END: VISION -->
			
            <!-- BEGIN: VALORES VF -->
            <div class="c-content-box c-size-md c-bg-white">
                <div class="container">
                    <div class="row">
                    <div class="c-content-title-1">
                        <h3 class="c-font-uppercase c-font-bold"> VALORES VF</h3>

                    <div class="col-md-3">
                        <div class="c-content-media-1 c-bordered wow animated bounceInUp" style="min-height: 380px;">
                            <div class="c-content-title-1 c-icongrande">
                                <i class="fas fa-hands-helping"></i>
                                <h3 class="c-font-uppercase c-font-bold">Virtudes</h3>
                                <!--<div class="c-line-left c-theme-bg"></div>-->
                            </div>
                                
								<p>
                                <b>Amor por los demás</b>: y es que en volunfair no miramos a cada persona como estamos acostumbrados a ser mirados 
                                por el mundo, dónde somos importantes en la medida en que aportemos a la sociedad, tanto social como económicamente. 
                                Sino que cada persona es un don, y los dones hay que cuidarlos y hacer que crezcan.
                                Y es <b>dando</b> dónde <b>se recibe</b>. Por eso nuestra misión principal es darnos a los demás con amor y por amor. 
							    </p>
 
                            </div>
                        </div>
                        
                        <div class="col-md-3">
                            <div class="c-content-media-1 c-bordered wow animated bounceInDown" style="min-height: 380px;">
                                <div class="c-content-title-1 c-icongrande">
                                    <i class="fas fa-dumbbell"></i>
                                    <h3 class="c-font-uppercase c-font-bold">Fortaleza</h3>
                                    <!--div class="c-line-left c-theme-bg"></div>-->
                                 </div>
                                
								<p>
                                Como todo en la vida, no siempre salen las cosas a la primera. Y volunfair no es la excepción. Pero <b>con cada caída se aprende</b>,
                                 porque la mejor maestra es la vida. Y es que caer no está mal, el problema es si nos encariñamos de la piedra. Porque el éxito 
                                 está en ir de fracaso en fracaso sin perder el entusiasmo. 
							    </p>
 
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="c-content-media-1 c-bordered wow animated bounceInUp" style="min-height: 380px;">
                                <div class="c-content-title-1 c-icongrande">
                                    <i class="fas fa-laugh-beam"></i>
                                    <h3 class="c-font-uppercase c-font-bold">Alegria</h3>
                                    <!--<div class="c-line-left c-theme-bg"></div>-->
                                 </div>
                                
								<p>
                                El poder de una sonrisa es el mayor poder de  volunfair. <b>La felicidad</b> más absoluta <b>está en</b> el <b>hacer felices a los demás</b>. Por eso
                                 volunfair es pura alegría y entusiasmo, es como un niño al que todo le sorprende. Volunfair está lleno de emociones intensas y 
                                 sorpresas inesperadas, pero nuestra mayor certeza es que, por cada gota que das de alegría,  recibes un mar de sonrisas.
							    </p>
 
                            </div>
                        </div>	
                        <div class="col-md-3">
                            <div class="c-content-media-1 c-bordered wow animated bounceInDown" style="min-height: 380px;">
                                <div class="c-content-title-1 c-icongrande">
                                    <i class="fas fa-book-open"></i>
                                   <h3 class="c-font-uppercase c-font-bold">Historia</h3>
                                   <!--<div class="c-line-left c-theme-bg"></div>-->
                                 </div>
                                
								<p>
                                Y es que volunfair tiene ya 5 años, está en esa época donde ya empieza a adquirir personalidad, imagen propia, 
                                 y asentando sus objetivos,  pero conservando esa mirada inocente e infantil, mirando al mundo con los ojos abiertos dejándose 
                                 sorprender cada momento por la vida y <b>viviendo</b> esos momentos <b>con esa emoción de niño</b>.  Ya empieza a tener
                                 recuerdos, historia, experiencia, en definitiva un recorrido. Cada vez más gente se sube al tren y menos se bajan. 
							    </p>
 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- END: VALORESVF -->
            <?php
				
            // --- Matriz con los miembros del equipo (no poner coma tras cada último corchete porque da error)
            // --- Guardar la foto en assets/base/img/volunfair/staff2/
            $equipazo = [
            
                "Dirección" => [
                        ['nombre' => 'Macarena Álvarez',				'foto' => 'jefaza.jpg'],
                        ['nombre' => 'Eduardo Amador',					'foto' => 'jefazo.jpg']
                    ],
                
                "Comunicación" => [
                        ['nombre' => 'Maria Lanzuela',					'foto' => 'commarialanzuela.jpg'],
                        ['nombre' => 'Alberto Cabello de los Cobos',	'foto' => 'comalbertocabello.jpg'],
                        ['nombre' => 'Gonzalo Castañeda',				'foto' => 'comgonzalocasta.jpg'],
                        ['nombre' => 'Jaime López',						'foto' => 'comjaimelopezespada.jpg'],
                        ['nombre' => 'Leonor Gómez',					'foto' => 'comleonorgomez.jpg'],
                        ['nombre' => 'Maria Martinez',					'foto' => 'commariamartinez.jpeg'],
                        ['nombre' => 'Marta García',					'foto' => 'commartagarcia.jpg'],
                        ['nombre' => 'Olivia Alarcón',					'foto' => 'comoiviaalarcon.jpg'],
                        ['nombre' => 'Rodrigo Salcedo',					'foto' => 'comsalseo.jpg'],
                        ['nombre' => 'Santi Antúnez',					'foto' => 'comsantiantunez.jpg']
                    ],
                    
                "Financiación" => [
                        ['nombre' => 'Pilar Baratech',					'foto' => 'finpilarbaratech.jpg'],
                        ['nombre' => 'Antonio Hernández-Ros',			'foto' => 'finantoniohernandezros.jpg'],
                        ['nombre' => 'Gonzalo Piedra',					'foto' => 'fingonzalopiedra.jpg'],
                        ['nombre' => 'Íñigo Baltar',					'foto' => 'fininigobaltar.jpg'],
                        ['nombre' => 'Juan Miguel de Haro',				'foto' => 'finjuandeharo.jpg'],
                        ['nombre' => 'Luis Merino',						'foto' => 'finluismerino.jpg'],
                        ['nombre' => 'Mar Ferrer',						'foto' => 'finmarferrer.jpg'],
                        ['nombre' => 'María de Gregorio',				'foto' => 'finmariadegregorio.jpg'],
                        ['nombre' => 'Miguel Callejo',					'foto' => 'finmiguelcallejo.jpg'],
                        ['nombre' => 'Pablo Legerén',					'foto' => 'finpablolegeren.jpg'],
                        ['nombre' => 'Paco Lanzuela',					'foto' => 'finpacolanzuela.jpg'],
                        ['nombre' => 'Teresa Helguero',					'foto' => 'finteresahelguero.jpg']
                    ],
                    
                "Gestión" => [
                        ['nombre' => 'Javier de Eusebio',				'foto' => 'gesjavideeusebio.jpg'],
                        ['nombre' => 'Ana Delgado',						'foto' => 'gesanadelgado.jpg'],
                        ['nombre' => 'Ana Erquicia',					'foto' => 'gesanaerquicia.jpg'],
                        ['nombre' => 'Carlos Muñoz',					'foto' => 'gescarlosmunoz.jpg'],
                        ['nombre' => 'Carmen Santaliestra',				'foto' => 'gescarmensant.jpg'],
                        ['nombre' => 'Carolina Martín',					'foto' => 'gescarolinamartin.jpg'],
                        ['nombre' => 'Jaime Escrig',					'foto' => 'gesjaimeescrig.jpg'],
                        ['nombre' => 'Jorge Núñez de Prado',			'foto' => 'gesjorgenunez.jpg'],
                        ['nombre' => 'Mariana Aldama',					'foto' => 'gesmarianaaldama.jpg'],
                        ['nombre' => 'Natalia Serrano',					'foto' => 'gesnataliaserrano.jpg'],
                        ['nombre' => 'Pablo Noblejas',					'foto' => 'gespablonoblezas.jpg'],
                        ['nombre' => 'Paula García',					'foto' => 'gespaulagarcia.jpg']
                    ],

                "Marketing" => [
                        ['nombre' => 'Ignacio García-Guerra',			'foto' => 'mktignaciogwar.jpg'],
                        ['nombre' => 'María Gallo',					    'foto' => 'mktmariagallo.jpg'],
                        ['nombre' => 'Alejandra Poole',					'foto' => 'mktalejandrapoole.jpg'],
                        ['nombre' => 'Ana Travesí',					    'foto' => 'mktanatravesi.jpg'],
                        ['nombre' => 'Carmen Jurado',					'foto' => 'mktcarmenjurado.jpg'],
                        ['nombre' => 'Daniela Peiró',					'foto' => 'mktdanielapeiro.jpg'],
                        ['nombre' => 'Denise Fernández',				'foto' => 'mktdenisefernandez.jpg'],
                        ['nombre' => 'Diego Peral Boixo',			    'foto' => 'mktdiegoperal.jpg'],
                        ['nombre' => 'Eduardo Sánchez',					'foto' => 'mktedusanchezgallo.jpg'],
                        ['nombre' => 'Lucia Alejandre',					'foto' => 'mktluciachaya.jpg'],
                        ['nombre' => 'Luis Cornide',					'foto' => 'mktluiscornide.jpg'],
                        ['nombre' => 'Luis García',					    'foto' => 'mktluisgarcia.jpg'],
                        ['nombre' => 'María López',					    'foto' => 'mktmarialopez.jpg'],
                        ['nombre' => 'Natalia Guerrero',				'foto' => 'mktnataliaguerrero.jpg'],
                        ['nombre' => 'Rocío López',					    'foto' => 'mktrociolopez.jpg']
                    ],

                "ONG's" => [
                        ['nombre' => 'Almudena López',					'foto' => 'ongalmulopez.jpg'],
                        ['nombre' => 'Ana Parra',					    'foto' => 'onganaparra.jpg'],
                        ['nombre' => 'Arancha Tejada',					'foto' => 'ongaranchatejada.jpg'],
                        ['nombre' => 'Begoña Núñez de Prado',			'foto' => 'ongbegonunez.jpg'],
                        ['nombre' => 'Camila Cisneros',					'foto' => 'ongcamilacisneros.jpg'],
                        ['nombre' => 'Camino Luque',					'foto' => 'ongcaminoluque.jpg'],
                        ['nombre' => 'Jaime Olivares',					'foto' => 'ongjaimeolivares.jpg'],
                        ['nombre' => 'José María Seral',				'foto' => 'ongjoseseral.jpg'],
                        ['nombre' => 'Lucia Marin',					    'foto' => 'ongluciamarin.jpg'],
                        ['nombre' => 'Rocío Gallo',					    'foto' => 'ongrociogallo.jpg']
                    ],

                "Web" => [
                        ['nombre' => 'Jorge García-Samartín',			'foto' => 'webjorgegarcia.jpg'],
                        ['nombre' => 'Ana Molina',						'foto' => 'webanamolina.jpg'],
                        ['nombre' => 'Ana Vendrell',					'foto' => 'webanavendrell.jpg'],
                        ['nombre' => 'Irene Revuelta',					'foto' => 'webirenerev.jpg'],
                        ['nombre' => 'María Gil',						'foto' => 'webmariagil.jpg'],
                        ['nombre' => 'Nacho Menéndez',					'foto' => 'webnachomenendez.jpg']
                    ]						
                ];

            // --- Resto de parámetros de la función
            $mostrar_nombres = true;
            $fotosPorFila = 4;
                
            // --- Función que escribe todas las fotos y nombres de los mimembros del equipo
            muestra_equipo($equipazo, $fotosPorFila, $mostrar_nombres);
            
            ?>

            <!-- END: PAGE CONTENT -->
        </div>
        <!-- END: PAGE CONTAINER -->
<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>