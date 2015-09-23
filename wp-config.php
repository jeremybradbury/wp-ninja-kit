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
define('DB_NAME', 'timely');

/** MySQL database username */
define('DB_USER', 'timely');

/** MySQL database password */
define('DB_PASSWORD', 'timely');

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
define('AUTH_KEY',         'SllgGAJ!WsErL@YG5Zo^cpcPSPEek&56Q+;V%LpJ|(Gu!|c/oGYi)9Wrh(8Z=KG.');
define('SECURE_AUTH_KEY',  '/6g^WoRQsXi8du`-y^-w%i3`D`Myd/|wOSF@$k@3GdqzR}i~/WC]K7|w*$D_*|g-');
define('LOGGED_IN_KEY',    'bu>~w^PqErfu+w+E-%a5xd-v=njI`q%_hkIRMmoDG3gI`.bDt(~8WpZ3R4[CqF&J');
define('NONCE_KEY',        'wh:8EVvo6hdwYvXht`X-QO2TNSD3VS2uDZ1-K{2rrz5IhC2, f$L~vp9d-@)Gt/`');
define('AUTH_SALT',        'N9CBk{xDQrK+B/IFx{wsJoanIjRuMz7 PkU3.:7#gzgnNWRCXQ-{aP3^UPur+%`T');
define('SECURE_AUTH_SALT', 'HH-|>5TMECT>#mAJh)D0V0%7cd82MB6MDEtBHs#w1r`Uzi>=74S`8p;&[2S!u %i');
define('LOGGED_IN_SALT',   'oO|h#j;8mOYZ,ry(NxM3<z:g{5Ew[TsV<0oMjPFK0Gf3>7;4k{Guq~=VTJC{V|qa');
define('NONCE_SALT',       '463c0u=2<,il*b{!a[cbWeCxM:g6-ptAX05EiLeV.do{_94t|BZ;-%g$S-,;1pxV');

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
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
