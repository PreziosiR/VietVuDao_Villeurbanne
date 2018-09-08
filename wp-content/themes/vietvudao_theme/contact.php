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

<div class="container">
  <div class="col-lg-12 text-center">
    <h2 class="mt-5">Contact</h2>
  </div>
     <form method="post" action="<?php echo strip_tags($_SERVER['REQUEST_URI']); ?>">

    <div class="form-group">
      <label for="lbl_name">Nom et prénom</label>
      <input type="text" class="form-control" name="nom">
    </div>
    <div class="form-group">
      <label for="lbl_mail">Votre email</label>
      <span style="color:#ff0000;">*</span>: <input type="text" class="form-control" name="email" size="30" />
    </div>
    <div class="form-group">
      <label for="lbl_titre">Objet du message</label>
      <input type="text" class="form-control" name="sujet">
    </div>
     <div class="form-group">
      <label for="lbl_message">Message</label>
      <span style="color:#ff0000;">*</span>:</p>
      <textarea name="message" class="form-control" cols="60" rows="10"></textarea>
     </div>
    <p>Combien font 1+3: <span style="color:#ff0000;">*</span>: <input type="text" name="captcha" size="2" /></p>
    <button type="submit" class="btn btn-primary" name="submit">Envoyer</button>
  </form>
</div>

</br>

<div class="container">

<?php
// S'il y des données de postées
if ($_SERVER['REQUEST_METHOD']=='POST') {
  // Code PHP pour traiter l'envoi de l'email

  $nombreErreur = 0; // Variable qui compte le nombre d'erreur

  // Définit toutes les erreurs possibles
  if (!isset($_POST['email'])) { // Si la variable "email" du formulaire n'existe pas (il y a un problème)
    $nombreErreur++; // On incrémente la variable qui compte les erreurs
    $erreur1 = '<p>Il y a un problème avec la variable "email".</p>';
  } else { // Sinon, cela signifie que la variable existe (c'est normal)
    if (empty($_POST['email'])) { // Si la variable est vide
      $nombreErreur++; // On incrémente la variable qui compte les erreurs
      $erreur2 = '<p>Vous avez oublié de donner votre email.</p>';
    } else {
      if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $nombreErreur++; // On incrémente la variable qui compte les erreurs
        $erreur3 = '<p>Cet email ne ressemble pas un email.</p>';
      }
    }
  }

  if (!isset($_POST['message'])) {
    $nombreErreur++;
    $erreur4 = '<p>Il y a un problème avec la variable "message".</p>';
  } else {
    if (empty($_POST['message'])) {
      $nombreErreur++;
      $erreur5 = '<p>Vous avez oublié de donner un message.</p>';
    }
  }

  if (!isset($_POST['captcha'])) {
    $nombreErreur++;
    $erreur6 = '<p>Il y a un problème avec la variable "captcha".</p>';
  } else {
    if ($_POST['captcha']!=4) {
      $nombreErreur++;
      $erreur7 = '<p>Désolé, le captcha anti-spam est erroné.</p>';
    }
  }

  if ($nombreErreur==0) { // S'il n'y a pas d'erreur
    // Récupération des variables et sécurisation des données
    $nom = htmlentities($_POST['nom']); // htmlentities() convertit des caractères "spéciaux" en équivalent HTML
    $email = htmlentities($_POST['email']);
    $message = htmlentities($_POST['message']);

    // Variables concernant l'email
    $destinataire = 'rpreziosi00@gmail.com'; // Adresse email du webmaster
    $sujet = 'Titre du message'; // Titre de l'email
    $contenu = '<html><head><title>Titre du message</title></head><body>';
    $contenu .= '<p>Bonjour, vous avez reçu un message à partir de votre site web.</p>';
    $contenu .= '<p><strong>Nom</strong>: '.$nom.'</p>';
    $contenu .= '<p><strong>Email</strong>: '.$email.'</p>';
    $contenu .= '<p><strong>Message</strong>: '.$message.'</p>';
    $contenu .= '</body></html>'; // Contenu du message de l'email

    // Pour envoyer un email HTML, l'en-tête Content-type doit être défini
    $headers = 'MIME-Version: 1.0'."\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1'."\r\n";

    @mail($destinataire, $sujet, $contenu, $headers); // Fonction principale qui envoi l'email

    echo '<h2>Message envoyé</h2>'; // Afficher un message pour indiquer que le message a été envoyé
  } else { // S'il y a un moins une erreur
    echo '<div style="border:1px solid #ff0000; padding:5px;">';
    echo '<p style="color:#ff0000;">Désolé, il y a eu '.$nombreErreur.' erreur(s). Voici le détail des erreurs:</p>';
    if (isset($erreur1)) echo '<p>'.$erreur1.'</p>';
    if (isset($erreur2)) echo '<p>'.$erreur2.'</p>';
    if (isset($erreur3)) echo '<p>'.$erreur3.'</p>';
    if (isset($erreur4)) echo '<p>'.$erreur4.'</p>';
    if (isset($erreur5)) echo '<p>'.$erreur5.'</p>';
  if (isset($erreur6)) echo '<p>'.$erreur6.'</p>';
  if (isset($erreur7)) echo '<p>'.$erreur7.'</p>';
    echo '</div>';
  }
}
?>
  </body>
</html>

<?php
  $id = get_the_ID();
  $post = get_post($id);
  $content = apply_filters('the_content', $post->post_content);
  echo $content;
?>
  <!-- div de google maps -->
  <iframe src="https://www.google.com/maps/d/embed?mid=1cYnJdesp4j6v7-pPxvlviUbtor7a6QwG" width="100%" height="480"></iframe>
</div>



<style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
    <script>
      function initMap() {
        var club = {lat: 45.759909 , lng: 4.882052};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: club
        });
        var marker = new google.maps.Marker({
          position: club,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBGkPeoepnEc3m2vZYXB_HpmbPcKI9gaTU&callback=initMap">
    </script>

<?php get_footer(); ?>