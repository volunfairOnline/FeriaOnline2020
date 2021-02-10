<?php 
    // --- Archivo con las funciones de configuración (cabeceras, pie, ...)
    include ('./scripts/o-config.php');
    session_start();
    // --- Iniciar la clase de conexión a la base de datos
    require_once('./mysql/MySQLHandler.class.php');     
    require_once("./mysql/misconexiones.php");
    // --- Abrir la base de datos con usuario visitante
	$sql = Abrir_base();
    // --- Escribimos las cabeceras
    escribe_cabecera();
?>

    <!-- BEGIN: PAGE CONTAINER -->
    <div class="c-layout-page">    
    <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->
    <!--<div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background:#515151">
            <div class="container">
            
            <div class="c-page-title c-pull-left">
                    <p class="c-font-uppercase c-font-bold c-font-white c-font-25 c-font-slim">Quiénes Somos</p>
                <h4 class="c-font-white c-font-thin c-opacity-07"> Conócenos mejor </h4>
            </div>
        </div>
    </div>-->
    <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-3 -->    
    <!-- BEGIN: PAGE CONTENT -->    
        <!-- BEGIN: CONTENT/TABS/TAB-1 -->
    <div class="c-content-box c-size-md c-no-bottom-padding c-overflow-hide">
        <!-- BEGIN: RIFA -->
        <div class="c-layout-breadcrumbs-1 c-bgimage c-subtitle c-fonts-uppercase c-fonts-bold c-bg-img-center" style="background-image: url(assets/base/img/volunfair/web/zap.jpg)">
            <div class="parallax-window" data-parallax="scroll" data-bleed="15" data-speed="0.2" data-z-index="0" data-yPos="500px" data-image-src="assets/base/img/volunfair/web/zap.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="animated c-bordered c-center c-content-media-1 flash row wow rifaTab">
                                <form id="laliamos" name="laliamos" method="POST" class="form-register" enctype="multipart/form-data">	
                                    <h2 class="titleRifa">Mirar mi número de la rifa:</h2><br>
                                    <label>Introduce tu teléfono: <input type="tel" name="telefono" placeholder="Número de teléfono"></label>
                                    <input type="submit" name="recuperar" value="recuperar" class="buttonRifa"><br><br>
                                </form> 
                                <?php
                                    if(isset($_POST['recuperar'])){
                                        $telefono =$_POST["telefono"];		
                                        $result =  $sql->CONNECTION->query("SELECT  num_rifa FROM sorteorifa WHERE movil_rifa='$telefono'");
                                        while ($row = $result->fetch_assoc()) {
                                            echo "El número de teléfono: <strong>".$telefono."</strong> tiene asignado el número de la rifa: <strong>".$row['num_rifa']."</strong><br>";
                                        }	
                                    }
                                ?>             
                                <br/>              
                                <p class="textResRifa"> El viernes publicaremos los resultados!<br/>
                                Mucha suerte y recuerda....Desgasta tus zapatillas!!!</p>
                                <br/><br/>                               
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>
        </div> 
        <br /><br />            
        <div class="c-container">
            <div class="row">
                <div class="col-md-12">
                    <div class="c-content-title-1">
                        <h3 class="c-font-34 c-font-center c-font-bold c-font-uppercase c-margin-b-30"> RIFA</h3>
                        <div class="c-line-center c-theme-bg"></div>
                        <p class="c-font-center c-font-bold c-font-uppercase c-margin-b-30">¡Seguro que estás deseando de poder disfrutar de algunos de estos premios!</p>
                    </div>
                </div>
            </div>
        </div>                
        <div class="c-container">               
            <!-- BEGIN: FORMULARIO -->
            <div class="row">
                <form class="formulario" method="post">
                    <!-- BEGIN:MOSTRAR TABLA RIFA -->
                    <div class="col-md-12 c-font-center c-font-bold c-margin-b-30">                            
                        <?php
                            // --- Abrir la base de datos con usuario visitante
                            $sql = Abrir_base();
                            // cambiado por *
                            $result = $sql->Select(" SELECT `id_rifa`, `articulo_rifa`,`descripcion_rifa`, `foto_rifa`, `empresa_rifa` FROM `rifa` ORDER BY `foto_rifa` DESC");

                            // --- Mostrar por pantalla el listado de posibles destinos
                            if($result === false){
                                throw new Exception('Error en la consulta');
                            } 
                            else {
                                echo '<div class="row">'."\n";
                                while($row = mysqli_fetch_array($result)) {
                                    echo '	<div class="col-md-3 c-content-media-1 c-bordered wow fadeIn animated">'."\n";
                                    // --- Solo ponemos imagen si no está vacía
                                    if($row['foto_rifa']) {echo '		<img width=100% src = "./assets/base/img/volunfair/rifa/'.$row['foto_rifa'].'" />'."\n";}
                                    echo '		<p> <b>'.$row['articulo_rifa'].'</b> de '.$row['empresa_rifa'];
                                    //echo '		<br>'."\n";
                                    //echo '		<b>Descripci&oacute;n</b>: '.htmlspecialchars(stripslashes($row['descripcion_rifa']))."\n";
                                    echo '		</p>'."\n";
                                    echo '	</div>'."\n";
                                }
                                echo '</div>'."\n";
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