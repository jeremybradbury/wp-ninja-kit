<?php
/**
 * @package Manage_Updates
 * @version 0.1
 */
/*
Plugin Name: Manage Updates
Plugin URI: https://codex.wordpress.org/Configuring_Automatic_Background_Updates
Description: Used to configure site update rules. Place this in /wp-content/mu-plugins to keep all users from disabling. Designed to be a "Must Use" Plugin as described in official documentation.
Author: Jeremy Bradbury
Version: 0.1
Author URI: http://codex.wordpress.org/
*/
class manage_updates {
	// here we blacklist plugins to not keep updated (such as the active theme)
	function manage_updates_themes_except ( $update, $item ) {
		// Array of theme slugs to never auto-update
		$blacklist = array ( 
			'akismet',
			'buddypress',
		);
		if ( ! in_array( $item->slug, $blacklist ) ) {
			return $update; // Use the normal API response to decide whether to update or not
		} else {
			return true; // Not blacklisted 
		}
	}

	// here we whitelist plugins to keep updated
	function manage_updates_specific_plugins ( $update, $item ) {
		// whitelist of plugin slugs to always auto-update
		$whitelist = array ( 
			'angularjs-for-wp',
			'bad-behavior',
			'busted',
			'theme-check',
			'tinymce-advanced',
			'wp-editor',
			'rest-api',
			'revisr',
			'pods',
		);
		if ( in_array( $item->slug, $whitelist ) ) {
			return true; // always update plugins in this array
		} else {
			return $update; // use the normal API response to decide whether to update or not
		}
	}
}
$updater = new manage_updates(); 
/* core */
// ensures updates roll even when .git/.svn are are found (even in plugins and folders above WP) 
add_filter( 'automatic_updates_is_vcs_checkout', '__return_false', 1 );

// allow nightlys
//add_filter( 'allow_dev_auto_core_updates', '__return_true' ); 

// allow major/minor revs 
add_filter( 'allow_minor_auto_core_updates', '__return_true' ); 

// allow only major revisions
//add_filter( 'allow_major_auto_core_updates', '__return_true' ); 

// use to disable core auto updates
//add_filter( 'auto_update_core', '__return_false' );

/* plugins */
add_filter( 'auto_update_plugin', 'manage_updates_specific_plugins', 10, 2 );

/* themes */
add_filter( 'auto_update_plugin', 'manage_updates_themes_except', 10, 2 );

/* translations */
// default = true, however explicitly defined so it's simple to change
add_filter( 'auto_update_translation', '__return_true' );

/* update emails */
// dont send email on success, but do on critical and fail 
apply_filters( 'auto_core_update_send_email', false, 'success');
apply_filters( 'auto_core_update_send_email', true, 'critical');
apply_filters( 'auto_core_update_send_email', true, 'fail');
