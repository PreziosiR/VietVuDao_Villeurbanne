<?php
/**
 * Template Name: contact
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>

  <title>Contact</title>

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

<div class="container">
  <div class="col-lg-12 text-center">
    <h2 class="mt-5">Contact</h2>
  </div>
  <form>
    <div class="form-group">
      <label for="exampleInputEmail1">Adresse email</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="entrer votre message"></textarea>
    </div>
    <div class="col-lg-12 text-center">
      <button type="submit" class="btn btn-primary">Envoyer !</button>
    </div>
  </form>
</div>

<div class="container">
  <div class="row"></div>
    <div class="col-lg-12 text-center">
      <h2 class="mt-5">Nos coordonnées</h2>
      <p class="text-justify text-center">51 rue La fontaine 69100 VILLEURBANNE</p>
      <p class="text-justify text-center">06 68 08 41 98</p>
      <p class="text-justify text-center">06 74 36 49 29</p>
    </div>
  </div>
</div>
<?php get_footer(); ?>