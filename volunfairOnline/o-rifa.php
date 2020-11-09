<?php 

// --- Archivo con las funciones de configuración (cabeceras, pie, ...)
include ('./scripts/config.php');

session_start();
// --- Iniciar la clase de conexión a la base de datos
require_once('./mysql/MySQLHandler.class.php');     
require_once("./mysql/misconexiones.php"); 

// --- Escribimos las cabeceras
escribe_cabecera();

?>
        <!-- BEGIN: PAGE CONTAINER -->
        <div class="c-layout-page">
		
            <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background-image: url(assets/base/img/volunfair/mares/mar_003.jpg)">
                 <!--<div class="container">
				 
                    <div class="c-page-title c-pull-left">
                    	  <p class="c-font-uppercase c-font-bold c-font-white c-font-25 c-font-slim">Quiénes Somos</p>
                        <h4 class="c-font-white c-font-thin c-opacity-07"> Conócenos mejor </h4>
                    </div>
                </div>-->
            </div>
            <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
			
            <!-- BEGIN: PAGE CONTENT -->
          
             <!-- BEGIN: CONTENT/TABS/TAB-1 -->
            <div class="c-content-box c-size-md c-no-bottom-padding c-overflow-hide">
                <div class="c-container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="c-content-title-1">
                                <h3 class="c-font-34 c-font-center c-font-bold c-font-uppercase c-margin-b-30"> RIFA</h3>
                                <div class="c-line-center c-theme-bg"></div>
                                <p class="c-font-center c-font-bold c-font-uppercase c-margin-b-30">¡Seguro que estas deseando de poder disfrutar de algunos de estos premios!</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="c-container">
                    <!-- BEGIN: FORMULARIO -->
                    <div class="row">
                        <form class="formulario" method="post">
                            <!-- BEGIN:MOSTRAR TABLA RIFA -->
                            <div class="col-md-6 c-font-center c-font-bold c-font-uppercase c-margin-b-30">
                                
									<?php
                                        // --- Abrir la base de datos con usuario visitante
                                        $sql = Abrir_base();
                                        // cambiado por *
                                        $result = $sql->Select(" SELECT `id_rifa`, `nombre_rifa`,`descripcion_rifa`, `imagen_rifa` FROM `rifa`");
                                        
                                        // --- Mostrar por pantalla el listado de posibles destinos
                                        if($result === false){
                                            throw new Exception(mysql_error($sql));
                                        } 
                                        else {
                                            while($row = mysqli_fetch_array($result)) {
                                                echo '<div class="row">'."\n";
                                                echo '	<div class="col-md-6 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
                                                echo '		<img src = "./assets/base/img/volunfair/rifa/'.$row['imagen_rifa'].'" />'."\n";
                                                echo '		<p> <b>'.$row['nombre_rifa'].'</b>';
                                                echo '		<br>'."\n";
                                                echo '		<b>Descripci&oacute;n</b>: '.htmlspecialchars(stripslashes($row['descripcion_rifa']))."\n";
                                                echo '		</p>'."\n";
                                                echo '	</div>'."\n";
                                                echo '</div>'."\n";
                                                echo '<br />'."\n";
                                            }
                                            /*
                                            echo('<table style="width: 100%;">
                                            <tbody>');
                                           while($row = mysqli_fetch_array($result)) {
                                               echo ('
                                               <tr>
                                                    <td style="width: 33.3333%;"><img src=".assets/base/img/volunfair/rifa/'.htmlspecialchars(stripslashes($row['imagen_rifa'])'"></td>
                                                    <td style="width: 33.3333%;">'.htmlspecialchars(stripslashes($row['nombre_rifa'])'</td>
                                                    <td style="width: 33.3333%;">'.htmlspecialchars(stripslashes($row['descripción_rifa'])'</td>
                                                </tr>');
                                            }
                                            echo('</tbody>
                                            </table>');*/
                                        }
                                    ?>									
                                    
                                
                                
                            </div>
                            <!-- END: MOSTRAR TABLA RIFA -->

                        </form>

                    </div>
                    <!-- END: FORMULARIO -->


				</div>		
            <!-- END: PAGE CONTENT -->
            </div>
        <!-- END: PAGE CONTAINER -->
<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>