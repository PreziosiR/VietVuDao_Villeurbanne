<?php
function wpdocs_theme_name_scripts()
{
  wp_register_style('main-style', get_template_directory_uri().'/blog.css', array(), true);
  wp_enqueue_style('main-style');
}
add_action( 'wp_enqueue_scripts', 'wpdocs_theme_name_scripts' );

register_nav_menus( array('menu' => 'Menu principal'));

/*
* On utilise une fonction pour créer notre custom post type 'Armes'
*/
// création du Custom Post Type pour les armes
function armes_post_type() {

  $labels = array(
    'name'                  => _x( 'Les armes', 'Les armes', 'text_domain' ),
    'singular_name'         => _x( 'Les armes', 'Post Type Singular Name', 'text_domain' ),
    'menu_name'             => __( 'Les Armes', 'text_domain' ),
    'name_admin_bar'        => __( 'Les Armes', 'text_domain' ),
    'archives'              => __( 'Item Archives', 'text_domain' ),
    'attributes'            => __( 'Item Attributes', 'text_domain' ),
    'parent_item_colon'     => __( 'Parent Item:', 'text_domain' ),
    'all_items'             => __( 'Toutes les armes', 'text_domain' ),
    'add_new_item'          => __( 'Ajouter une arme', 'text_domain' ),
    'add_new'               => __( 'Ajouter une arme', 'text_domain' ),
    'new_item'              => __( 'Ajouter une arme', 'text_domain' ),
    'edit_item'             => __( 'Editer une arme', 'text_domain' ),
    'update_item'           => __( 'Mettre à jour une arme', 'text_domain' ),
    'view_item'             => __( 'Voir une arme', 'text_domain' ),
    'view_items'            => __( 'View Items', 'text_domain' ),
    'search_items'          => __( 'Search Item', 'text_domain' ),
    'not_found'             => __( 'Not found', 'text_domain' ),
    'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
    'featured_image'        => __( 'Featured Image', 'text_domain' ),
    'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
    'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
    'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
    'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
    'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
    'items_list'            => __( 'Items list', 'text_domain' ),
    'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
    'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
  );
  $args = array(
    'label'                 => __( 'Les armes', 'text_domain' ),
    'description'           => __( 'Post Type Description', 'text_domain' ),
    'labels'                => $labels,
    'supports'              => array( 'title', 'editor' ),
    'taxonomies'            => array( 'category', 'post_tag' ),
    'hierarchical'          => true,
    'public'                => true,
    'show_ui'               => true,
    'show_in_menu'          => true,
    'menu_position'         => 5,
    'show_in_admin_bar'     => true,
    'show_in_nav_menus'     => true,
    'can_export'            => true,
    'has_archive'           => false,
    'exclude_from_search'   => false,
    'publicly_queryable'    => true,
    'capability_type'       => 'page',
  );
  register_post_type( 'armes', $args );

}
add_action( 'init', 'armes_post_type', 0 );

// création du Custom Post Type pour les ceintures noires
function ceintures_post_type() {

  $labels = array(
    'name'                  => _x( 'Les ceintures', 'Les ceintures', 'text_domain' ),
    'singular_name'         => _x( 'Les ceintures', 'Post Type Singular Name', 'text_domain' ),
    'menu_name'             => __( 'Les ceintures', 'text_domain' ),
    'name_admin_bar'        => __( 'Les ceintures', 'text_domain' ),
    'archives'              => __( 'Item Archives', 'text_domain' ),
    'attributes'            => __( 'Item Attributes', 'text_domain' ),
    'parent_item_colon'     => __( 'Parent Item:', 'text_domain' ),
    'all_items'             => __( 'Toutes les ceintures noires', 'text_domain' ),
    'add_new_item'          => __( 'Ajouter une ceintures noire', 'text_domain' ),
    'add_new'               => __( 'Ajouter une ceintures noire', 'text_domain' ),
    'new_item'              => __( 'Ajouter une ceintures noire', 'text_domain' ),
    'edit_item'             => __( 'Editer une ceintures noires', 'text_domain' ),
    'update_item'           => __( 'Mettre à jour une ceintures noire', 'text_domain' ),
    'view_item'             => __( 'Voir une ceintures noire', 'text_domain' ),
    'view_items'            => __( 'View Items', 'text_domain' ),
    'search_items'          => __( 'Search Item', 'text_domain' ),
    'not_found'             => __( 'Not found', 'text_domain' ),
    'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
    'featured_image'        => __( 'Featured Image', 'text_domain' ),
    'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
    'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
    'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
    'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
    'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
    'items_list'            => __( 'Items list', 'text_domain' ),
    'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
    'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
  );
  $args = array(
    'label'                 => __( 'Les ceintures', 'text_domain' ),
    'description'           => __( 'Post Type Description', 'text_domain' ),
    'labels'                => $labels,
    'supports'              => array( 'title', 'editor' ),
    'taxonomies'            => array( 'category', 'post_tag' ),
    'hierarchical'          => true,
    'public'                => true,
    'show_ui'               => true,
    'show_in_menu'          => true,
    'menu_position'         => 5,
    'show_in_admin_bar'     => true,
    'show_in_nav_menus'     => true,
    'can_export'            => true,
    'has_archive'           => false,
    'exclude_from_search'   => false,
    'publicly_queryable'    => true,
    'capability_type'       => 'page',
  );
  register_post_type( 'ceintures', $args );

}
add_action( 'init', 'ceintures_post_type', 0 );