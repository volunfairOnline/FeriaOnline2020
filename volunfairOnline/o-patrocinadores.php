<?php


// --- Archivo con las funciones de configuración (º, pie, ...)
include ('./scripts/o-config.php');

// --- Escribimos las cabeceras
escribe_cabecera();

?>

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
        
        <!-- BEGIN: PAGE CONTAINER -->
        <!-- MODELO PATROCINADORES NO MUY GRANDES --> 
        <div class="c-content-box c-size-md c-bg-white">     
            <div class="container">
                            
                <div class="c-content-title-1">
                    <h3 class="c-font-uppercase c-center c-font-bold">Patrocinadores</h3>
                    <div class="c-line-center c-theme-bg"></div>
                    <p class="c-font-center c-font-bold c-font-uppercase c-margin-b-30">Ellos han hecho posible VOLUNFAIR 2021</p>
                </div>

                 <div class="col-md-3">
                    <div class="item">
                        <a href="https://www.airbus.com/" target="_blank">
                             <img src="assets/base/img/volunfair/patrocinadores/logo-airbus.png" title ="Airbus" alt="Airbus" style="padding-top: 20%;" width="100%" />
                        </a>
                    </div>
                    <p>
                    As a company, specialized in design, manufacture and maintenance of the rolling stock, Talgo has the following key success factors: innovation, sustainability, safety, quality, competitiveness and full custom approach to every project.
                    </p>
                 </div>            
                            
                            
                <div class="col-md-3">
                    <div class="item">
                        <a href="https://www.hatchadream.com/" target="_blank">
                            <img src="assets/base/img/volunfair/patrocinadores/logo-HAD.png" title ="Hatch a Dream - Ahorra y recauda para tu voluntariado" alt="Hatch a Dream - Ahorra y recauda para tu voluntariado"  width="100%" />
                        </a>
                     </div>
                     <p>
                     As a company, specialized in design, manufacture and maintenance of the rolling stock, Talgo has the following key success factors: innovation, sustainability, safety, quality, competitiveness and full custom approach to every project.
                    </p>
                 </div> 
                 
                 <div class="col-md-3">
                    <div class="item">
                        <a href="http://www.etsii.upm.es/" target="_blank">
                            <img src="assets/base/img/volunfair/patrocinadores/logoE.jpg" title ="ETSII Madrid" alt="ETSII Madrid"  width="100%" />
                        </a>
                     </div>
                     <p>
                     As a company, specialized in design, manufacture and maintenance of the rolling stock, Talgo has the following key success factors: innovation, sustainability, safety, quality, competitiveness and full custom approach to every project.
                    </p>
                </div>
     
                <div class="col-md-3">
                    <div class="item">
                        <a href="https://www.talgo.com/" target="_blank">
                            <img src="assets/base/img/volunfair/patrocinadores/logo-talgo.png" title ="Talgo" alt="Talgo" style="padding-top: 10%; padding-left: 10%;" width="90%" />
                        </a>
                    </div>
                    <p>
                    As a company, specialized in design, manufacture and maintenance of the rolling stock, Talgo has the following key success factors: innovation, sustainability, safety, quality, competitiveness and full custom approach to every project.
                    </p>
                </div>
            </div>
        </div>
        
        <br /><br />

        <!-- MODELO PATROCINADORES GRANDES --> 
        <div class="c-content-box c-size-md c-bg-white">    
            <div class="container">        
                <div class="col-md-1"> 
                <a>
                </a>
                </div>
                <div class="col-md-5">
                        <bold><h3 class="c-center">Talgo</h3></bold>
                        <a href="http://www.etsii.upm.es/" target="_blank">
                            <img src="assets/base/img/volunfair/patrocinadores/logoE.jpg" title ="ETSII Madrid" alt="ETSII Madrid"  width="100%" />
                        </a>
                    <p>
                    As a company, specialized in design, manufacture and maintenance of the rolling stock, Talgo has the following key success factors: innovation, sustainability, safety, quality, competitiveness and full custom approach to every project.
                    </p>
                </div>
                <div class="col-md-5">
                        <bold><h3 class=" c-center">Talgo</h3></bold>
                        <a href="https://www.talgo.com/" target="_blank">
                            <img src="assets/base/img/volunfair/patrocinadores/logo-talgo.png" title ="Talgo" alt="Talgo" style="padding-top: 10%; padding-left: 10%;" width="90%" />
                        </a>
                    <p>
                    As a company, specialized in design, manufacture and maintenance of the rolling stock, Talgo has the following key success factors: innovation, sustainability, safety, quality, competitiveness and full custom approach to every project.
                    </p>
                </div>
                <div class="col-md-1">
                <a>
                </a>
                </div>
            </div>
        </div>
        
        
        
        <!-- END: PAGE CONTAINER -->
    </div>

<?php

// --- Escribimos el pie de página (el archivo de configuración ya está incluido)
escribe_pie();

?>