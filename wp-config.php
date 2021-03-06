<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'bdd_wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'cVGZDYP]eDEY|2d#rnm)_64uSMhg8|QLaykvtfOr6Iv*de?`z2! dhy*&HOni*T+');
define('SECURE_AUTH_KEY',  '{&Q%_R1%Tp^K9Q&R>=Jto<=y16n8$H5THi:NLgT]f=7]iViu h,X+~M2<>asm.<J');
define('LOGGED_IN_KEY',    'hkqwX-W}R%!3^Z~2C 7JrhvL~|-s;2|25}YUkzm)3A6$P{BB>d+@]IR^G6`N0Lx/');
define('NONCE_KEY',        'y2;Z  A)eaa:X@u2(ey)_Q`tus<{eR[99nnO<&E)N&HM%CF^-N|>Goxz.C(v;P#)');
define('AUTH_SALT',        '3H@mU4VXcX}3o;,z/D(yi_VA@;m~GNwC/o3pA ]8NiF5Y|i[t:yrLIN>(<P[;1)n');
define('SECURE_AUTH_SALT', 'k;vZ>Pev*1)Y3KQoi8k%j3{9h75US)$5R_7rDr.4vgl;}tx9}A_BN5S* sUU?Gv)');
define('LOGGED_IN_SALT',   'nc~jHY.RR??4Z9AWkEh.+&Iz)+tBtJOuKq=gf5M9`HxI(@i10G3MRSi&v*ZJv* C');
define('NONCE_SALT',       '] Z4=`(ZvM~i{|mvcDFK=1o]}/-@)72bV(OuUy3 +M+o-mQxsS%!3@I/HQg;z(U!');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
