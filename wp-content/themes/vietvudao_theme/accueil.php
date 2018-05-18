<?php
/**
 * Template Name: accueil
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>


  <!-- Custom styles for this template -->
  <style>
    body {
      padding-top: 54px;
    }
    @media (min-width: 992px) {
      body {
        padding-top: 56px;
      }
    }

  </style>
<!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-2 text-center">
          <img class="d-block w-75" src="/wordpress/wp-content/uploads/2018/03/vvd-logo.png" alt="Second slide">
        </div>
        <div class="col-lg-10 text-center">
          <h1 class="mt-5">Việt vũ Đạo International / Ecole Tân-Lượng</h1>
          <p class="lead">Võ Cổ Truyền Việt Nam</p>
        </div>
      </div>
    </div>

  <div id="carouselExampleIndicators" class="carousel slide container" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src ="/wordpress/wp-content/uploads/2018/03/temple.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/wordpress/wp-content/uploads/2018/03/paysage.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/wordpress/wp-content/uploads/2018/03/paysage-eau.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!--
    <div class="container img-conteneur">
        <img style="display:block; margin:auto" class="img-fluid" src="images/temple.jpg">
    </div>
-->
    <div class="container p-custom">
      <p>L'Association Lyon Gian vous propose de découvrir le Việt vũ Đạo (art martial originaire du Sud du Viêtnam)
         par la pratique de ses 5 armes : le nông gia cụ, le bâton long, le sabre, la philosophie et le combat à mains nues.
         Venez pratiquer cet art martial les lundis (20h30 - 22h) et mercredis (20h30 - 22h) au Centre social de la Ferrandière
         - 51 rue Lafontaine 69100 VILLEURBANNE
         Tarifs 2015 : 110 € / an (cotisation) + 36 € (licence fédérale)
       </p>
    </div>
<?php get_footer(); ?>