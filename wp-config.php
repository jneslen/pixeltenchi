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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
include(dirname(__FILE__) . '/application/config/local.php');

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '8ptncrzvzgagqg3rczxfpknxn3b1hsrf0punw0lsvwidoh3t0z1wybjbeo0n16ka' );
define( 'SECURE_AUTH_KEY',  'r2w6zqvzbtouyulhkhcjsg2jqmtyjyqafi0yrilchqzuimopyomknvzbjfode2hb' );
define( 'LOGGED_IN_KEY',    'uqfaitp4kiwxixbkguduqd03k66dwu2uqicba3fcvexs8d9atmc9w3k8p6m1v0js' );
define( 'NONCE_KEY',        '3vj8gavgmvvgrbtbzitbzkiosrnawpoxuwhrtlqvt1hy5v2u9j77c68lkneecllm' );
define( 'AUTH_SALT',        'ksobokbixsttqknpqbojwmwjggzgkxurebl7z6j37s6rz2hq0da509sbr72rfcyy' );
define( 'SECURE_AUTH_SALT', 'd7ne3bxetkspqcfymfdhfxeccz17mxyi7qsiotcfv7noffv4ssv82g35fkklnopl' );
define( 'LOGGED_IN_SALT',   'vs8qz5hpkibyhyevfg5nxi72euirx2ifeoyqbjysebvguixlolnmqzplv59qgyrg' );
define( 'NONCE_SALT',       'kufkwoxzyezhbqrbambdwwlgfxopruygnzttortp1rtqkqqiitlpznospv4hfnrk' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
