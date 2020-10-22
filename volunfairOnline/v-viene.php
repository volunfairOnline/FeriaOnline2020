
<?php

// --- Archivo con las funciones de configuración (cabeceras, pie, ...)
include ('./scripts/config.php');

// --- Escribimos las cabeceras
escribe_cabecera();

?>

        <script>
            // --- Acciones a hacer nada más cargar la página
            $(document).ready(function() {
                $("#resultadoBusqueda").html('');   // --- Dejar vacío el cuadro con el resultado de la búsqueda
                // --- Hacer que el id galFotos sea efectivamente una galería de fotos de tipo owlCarousel
                // --- Documentación en https://owlcarousel2.github.io/OwlCarousel2/docs/api-options.html
                $('#galFotos').owlCarousel({
                    items:2,            // --- Número de fotos por línea
                    lazyLoad: true,     // --- Activar efecto de "aparición" al cargar la página
                    autoplay: true,     // --- Que se muevan solas las fotos
                    loop:true,          // --- Bucle infinito
                    margin:10
                });
            });
			
            // --- Función para activar la consulta de los premios de la rifa
			function buscar() {
                var numero = $("#numero").val();
                var serie = $("#serie").val();
                
                // --- Llama al documento buscar-rifa.php, encargado de buscar si el número ha sido o no premiado y escribe el mensaje correspondiente
                // --- En buscar-rifa.php está definido qué sale cuando no ha tocado nada
				if (numero != "" && serie != "") {
					$.post("./mysql/buscar-rifa.php", {valorBusqueda: [numero, serie]}, function(mensaje) {
						$("#buscarRifa").html(mensaje);
					}); 
				}
            };
            
        </script>
        <!-- BEGIN: PAGE CONTAINER -->
        <div class="c-layout-page">
		
            <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background-image: url(assets/base/img/volunfair/mares/mar_004.jpg)">
            </div>
            <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->

            <!-- BEGIN: TITULO -->
			<div id="c-isotope-anchor-1" class="c-content-box c-size-md c-bg-img-center" >
				<div class="c-content-title-1">
					<h3 class="c-center c-font-uppercase c-font-bold">LA EDICIÓN 2020</h3>
					<div class="c-line-center c-theme-bg"></div>
				</div>
			</div>
            <!--- END: TÍTULO -->

            <!-- BEGIN: CUENTA ATRÁS -->
                <!--<div class="parallax-window" data-parallax="scroll" data-bleed="15" data-speed="0.2" data-z-index="0" data-yPos="500px" data-image-src="assets/base/img/volunfair/mares/mar13.jpeg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="c-content-media-1 c-center c-bordered wow animated flash">
                                    <div class="col-md-12">
                                        <div class="c-content-title-1">
                                            <h3 class="c-font-34 c-font-center c-font-bold c-font-uppercase c-margin-b-30">VOLUNFAIR 2020 será realidad en ... </h3>
                                        </div>
                                    </div>
                                    
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
                                    
                                    <br /><br />                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>-->
                <!-- 
                    https://denis-creative.com/jstimer/
                    https://www.sitepoint.com/build-javascript-countdown-timer-no-dependencies/
                -->
            <!-- END: CUENTA ATRÁS -->

            <!-- BEGIN: RIFA -->
            <!--<div class="parallax-window" data-parallax="scroll" data-bleed="15" data-speed="0.2" data-z-index="0" data-yPos="500px" data-image-src="assets/base/img/volunfair/mares/mar13.jpeg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="animated c-bordered c-center c-content-media-1 flash row wow">
                                    <div class="col-md-12">
                                        <div class="c-content-title-1">
                                            <h3 class="c-font-34 c-font-center c-font-bold c-font-uppercase c-margin-b-30">Resultados de la rifa</h3>
                                        </div>
                                    </div>
                                    -->

                                    <!-- BEGIN: RESULTADOS DE LA RIFA -->
                                    <!--<div class="c-center col-md-12 container row" id="buscarRifa">
                                        Introduce tu número para saber si has tenido suerte:
                                        <br /><br />

                                        <div class="c-center">
                                            <form>
                                                <label>Número:<label> <input type="number" id="numero" min="0" max="499" placeholder="" required="required" />
                                                <label>Serie:<label> 
                                                <select id="serie" required="required" >
                                                    <option value="am">Amarillo</option>
                                                    <option value="az">Azul</option>
                                                </select>
                                                <input type="button" value="Buscar" onClick="buscar();" >                                       
                                            </form>
                                        </div>
                                    </div>
                                    <!-- END: RESULTADOS DE LA RIFA -->

                                    <!-- BEGIN: AVISO PREVIO CUANDO NO HAY RIFA -->
                                    <!--
                                    El viernes publicaremos los resultados!<br />
                                    Mucha suerte y recuerda....No hay mar sin gotas

                                    <br /><br />  
                                    -->
                                    <!-- END: AVISO PREVIO CUANDO NO HAY RIFA -->                              
                                <!--</div>
                            </div>
                        </div>
                    </div>
                </div>-->
            <!-- END: RIFA -->

            <!-- BEGIN: VÍDEOS AÑO ANTERIOR -->
            <div class="parallax-window" data-parallax="scroll" data-bleed="15" data-speed="0.2" data-z-index="0" data-yPos="500px" data-image-src="assets/base/img/volunfair/mares/mar13.jpeg">
                <div class="container">
                    <div class="col-md-12 c-content-box c-size-md c-bordered wow  bounceIn animated">
                        <div class="c-bg-white c-content-media-1 c-bordered">
                            <div class="col-md-12">
                                <div class="c-content-title-1">
                                    <h3 class="c-font-34 c-font-center c-font-bold c-font-uppercase c-margin-b-30">Vídeos</h3>
                                </div>
                            </div>
                            <div class="row c-center wow animated bounceIn">
                                <iframe width="500" height="315" src="https://www.youtube-nocookie.com/embed/WEtWWy8wbgM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <iframe width="500" height="315" src="https://www.youtube-nocookie.com/embed/J3ojTZEZMXg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row c-center wow animated bounceIn">
                                    <iframe width="500" height="315" src="https://www.youtube-nocookie.com/embed/ZEp-a___nng" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <iframe width="500" height="315" src="https://www.youtube-nocookie.com/embed/KPnpI58YjMY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>  
                            <br />  
                            <br />
                            <div class="col-md-12">
                                <div class="c-content-title-1">
                                    <h3 class="c-font-34 c-font-center c-font-bold c-font-uppercase c-margin-b-30">Galería de fotos</h3>
                                </div>
                            </div>
                            <div id="galFotos" style="margin-top: 65px;">
                                <div>
                                    <img src="./assets/base/img/volunfair/anteriores/2020/2020-Fotos-2.jpg" alt="VOLUNFAIR 2020" tilte="VOLUNFAIR 2020" />
                                </div>
                                <div>
                                    <img src="./assets/base/img/volunfair/anteriores/2020/2020-Fotos-3.jpg" alt="VOLUNFAIR 2020" tilte="VOLUNFAIR 2020" />
                                </div>
                                <div>
                                    <img src="./assets/base/img/volunfair/anteriores/2020/2020-Fotos-4.jpg" alt="VOLUNFAIR 2020" tilte="VOLUNFAIR 2020" />
                                </div>
                                <div>
                                    <img src="./assets/base/img/volunfair/anteriores/2020/2020-Fotos-5.jpg" alt="VOLUNFAIR 2020" tilte="VOLUNFAIR 2020" />
                                </div>
                                <div>
                                    <img src="./assets/base/img/volunfair/anteriores/2020/2020-Fotos-6.jpg" alt="VOLUNFAIR 2020" tilte="VOLUNFAIR 2020" />
                                </div>
                                <div>
                                    <img src="./assets/base/img/volunfair/anteriores/2020/2020-Fotos-7.jpg" alt="VOLUNFAIR 2020" tilte="VOLUNFAIR 2020" />
                                </div>
                            </div>                         
                        </div>

                    </div> 
                </div>
            </div>
            <!-- END: VÍDEOS AÑO ANTERIOR -->

            <br /><br />

            <div class="c-content-title-1">
                <div class="c-line-center c-theme-bg"></div>
                <h2 class="c-center c-font-uppercase  c-font-bold">Miércoles 12</h2>   
                <p class="c-center" >Una sesión única, un  viaje que nos hará cambiar nuestra visión de las cosas</p>                      
            </div>

            <!-- BEGIN: ADOL-ESSENCE -->
            <div class="c-content-box c-size-md c-bg-white">
                <div class="parallax-window" data-parallax="scroll" data-bleed="15" data-speed="0.2" data-z-index="0" data-image-src="assets/base/img/volunfair/mares/mar13.jpeg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="c-content-media-1 c-bordered c-background-gray wow animated fadeInLeft" style="min-height: 300px;">                                  
                                    <div class="c-content-title-3 c-theme-border c-right">
                                        <h3 class="c-right c-font-uppercase c-font-bold">Rocío Talavera y Rodrigo Osborne</h3>
                                        <h4 class="c-right c-font-uppercase c-font-bold">
                                            <a href="https://www.instagram.com/adolessence.voluntarios" target="_blank">Adol-essence</a>
                                        </h4>
                                        <div class="c-right c-line-left "> </div>
                                    </div>
                                    <p class="c-right">
                                        Rocío Talavera y Rodrigo Osborne, dos jóvenes sevillanos de 19 años, hicieron realidad su mayor ilusión, consiguiendo así mejorar y facilitar 
                                        la dura realidad que se le presenta a algunos adolescentes. Ante la enfermedad de Rodrigo, se les ocurrió la idea de fundar Adol-essence, 
                                        su pequeña gota para cambiar el mundo. Esta plataforma busca tejer redes de contacto que puedan dar apoyo a adolescentes hospitalizados.
                                        <br />
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 animated wow fadeInRight">
                                <!--<div class="c-content-media-2 c-bg-img-center" style="background-image: url(assets/base/img/volunfair/participantes/adol-essence.jpeg); /*min-height: 300px;*/">
                                </div>-->
                                <img src="assets/base/img/volunfair/participantes/adol-essence.jpeg" width="100%" title="Adol-essence: un proyecto de Rocío Talavera y Rodrigo Osborne" alt="Adol-essence: un proyecto de Rocío Talavera y Rodrigo Osborne"/>
                            </div>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
            <!-- END: ADOL-ESSENCE -->

            <div class="c-content-title-1">
                <div class="c-line-center c-theme-bg"></div>
                <h2 class="c-center c-font-uppercase c-font-bold">Jueves 13</h2>   
                <p class="c-center" >Dos madres muy especiales</p>                      
            </div>

            <!-- BEGIN: VILLAGAYUMBOS & MI SUPERHÉROE SIN CAPA -->
            <div class="c-content-box c-size-md">
                <div class="parallax-window" data-parallax="scroll" data-bleed="15" data-speed="0.2" data-z-index="0" data-yPos="-100px" data-image-src="assets/base/img/volunfair/mares/mar13.jpeg">
                    <div class="container c-center">
                        <div class="row">
                            <!-- BEGIN: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
                            <div class="col-md-2">
                            </div>
                            <!-- END: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
                            <!-- BEGIN: VILLAGAYUMBOS -->
                            <div class="col-md-4">
                                <div class="col-md-12">
                                    <div class="row c-center wow animated bounceInUp">
                                        <img src="assets/base/img/volunfair/participantes/villagayumbos.png" width="100%" title="Villagayumbos" alt="Villagyumbos" />
                                    </div>
                                    <br />
                                    <div class="row wow animated bounceInDown">
                                        <div class="c-content-media-1 c-bordered c-background-gray wow animated" style="min-height: 300px;">                                  
                                            <div class="c-content-title-3 c-theme-border c-right">
                                                <h3 class="c-right c-font-uppercase c-font-bold">Natalia</h3>
                                                <h4 class="c-right c-font-uppercase c-font-bold">
                                                    <a href="https://www.instagram.com/villagayumbos/" target="_blank">@Villagayumbos</a>
                                                </h4>
                                                <div class="c-right c-line-left "> </div>
                                            </div>
                                            <p class="c-right">
                                                ¿Y tú qué harías si un día te despiertas y ves que influyes en la vida de casi 90.000 personas?<br />
                                                Para Natalia esto es su día a día. Ademas, es madre de tres niños, sus tres más fieles seguidores y los que dan el nombre a su cuenta. 
                                                Y eso nos hace pensar en el papel de una madre y que a lo mejor son ellos los influencers, ya que cualquier mamá será siempre la fan número 
                                                uno de sus hijos y son ellos los que influyen, guían y determinan su vida.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END: VILLAGAYUMBOS -->
                            <!-- BEGIN: MI SUPERHÉROE SIN CAPA -->
                            <div class="col-md-4">
                                <div class="col-md-12">
                                    <div class="row c-center wow animated bounceInUp">
                                        <img src="assets/base/img/volunfair/participantes/misuperheroesincapa.jpeg" width="100%" title="Mi superhéroe sin capa" alt="Mi superhéroe sin capa" />
                                    </div>
                                    <br />
                                    <div class="row wow animated bounceInDown">
                                        <div class="c-content-media-1 c-bordered c-background-gray wow animated fadeInLeft" style="min-height: 300px;">                                  
                                            <div class="c-content-title-3 c-theme-border c-left">
                                                <div class="c-left c-line-right "> </div>
                                                <h3 class="c-left c-font-uppercase c-font-bold">María</h3>
                                                <h4 class="c-left c-font-uppercase c-font-bold">
                                                    <a href="https://www.instagram.com/misuperheroesincapa/" target="_blank">@Misuperheroesincapa</a>
                                                </h4>
                                            </div>
                                            <p class="c-right">
                                                María tenía su trabajo de profesora de colegio, su marido, sus hijos, sus amigas...y un día, de repente, la vida le regaló
                                                a Nacho, un superhéroe que todos los días lucha por sobrevivir y que hace que cada uno a su alrededor saque lo mejor de sí mismo
                                                y se convierta también en otro súperhéroe.<br />
                                                Y es que su hijo tiene síndrome de Ondine, una enfermedad rara que le impide llevar una vida normal y que ha supuesto para María
                                                descubrir que cada día es un bonito obsequio que hay que disfrutar.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END: MI SUPERHÉROE SIN CAPA -->
                            <!-- BEGIN: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
                            <div class="col-md-2">
                            </div>
                            <!-- END: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
                            </div>
                    </div>
                </div>
                    
                <br /><br/>
            </div>
            <!-- END: VILLAGAYUMBOS & MI SUPERHÉROE SIN CAPA -->

            <div class="c-content-title-1">
                <div class="c-line-center c-theme-bg"></div>
                <h2 class="c-center c-font-uppercase c-font-bold">Y con la colaboración de:</h2>                    
            </div>

            <br />

            <!-- BEGIN: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
            <div class="col-md-4">
            </div>
            <!-- END: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
            <!-- BEGIN: PABLO Y CLARA -->
            <div class="row">
                <div class="col-md-2">
                    <div class="col-md-12">
                        <div class="row c-center fotos wow animated fadeInLeft">
                            <img src="assets/base/img/volunfair/participantes/pablo-espana-falda.jpg" width="100%" title="Pablo España" alt="Pablo España" />
                        </div>
                        <div class="row c-content-media-1 wow animated fadeInRight">
                            <div class="c-center">
                                <h3 class="c-font-uppercase c-font-bold">Pablo España</h3>
                                <div>Speaker de VOLUNFAIR 2020</div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="col-md-12">
                        <div class="row c-center fotos wow animated fadeInRight">
                            <img src="assets/base/img/volunfair/participantes/clara-h.jpeg" width="100%" title="Clara H" alt="Clara H" />
                        </div>
                        <div class="row c-content-media-1 wow animated fadeInLeft">
                            <div class="c-center">
                                <h3 class="c-font-uppercase c-font-bold">Clara H</h3>
                                <div>Actuación en directo</div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
            <!-- END: PABLO Y CLARA -->
            <!-- BEGIN: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->
            <div class="col-md-4">
            </div>
            <!-- END: COLUMNA EN BLANCO PARA QUE EL RESTO QUEDE CENTRADO -->

            <!-- END: PAGE CONTENT -->
        </div>
        <!-- END: PAGE CONTAINER -->
        <br /><br/>
<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>