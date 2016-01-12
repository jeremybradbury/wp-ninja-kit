<?php
	
	$config_file = isset($config_file) ? $config_file : 'config.json';
	$json_stream = fopen($config_file, 'r');
	$json = fread($json_stream, filesize($config_file));
	$config = json_decode($json);

	$styles = array(
		"green" => ' data-background="rgb(65, 165, 76)"',
		"red" => ' data-background="rgb(180, 56, 41)"',
		"teal" => ' data-background="rgb(79, 173, 165)"',
		"dark-teal" => ' data-background="rgb(18, 37, 42)"',
		"grey" => ' data-background="rgb(143, 136, 130)"',
		"brown" => ' data-background="rgb(52, 48, 44)"',
		"bg1" => ' data-background="'.$config->{'themeImages'}.'background1.jpg"',
		"bg2" => ' data-background="'.$config->{'themeImages'}.'background2.jpg"',
		"bg3" => ' data-background="'.$config->{'themeImages'}.'background3.jpg"',
		"bg4" => ' data-background="'.$config->{'themeImages'}.'background4.jpg"',
		"bg5" => ' data-background="'.$config->{'themeImages'}.'background5.jpg"',
		"bg6" => ' data-background="'.$config->{'themeImages'}.'background6.jpg"'
	);
	function set_slide_style($style) {
		global $styles;
		echo $styles[$style];
	}
	function set_slide_background_image($filename, $path="img/") {
		echo ' data-background="'.$path.$filename.'"';
	}

	function serialize_config_value($value) {
		if (is_array($value)) {
			echo "[\n";
			serialize_config_array($value);
			echo "],\n";
		}
		elseif (is_object($value)) {
			echo "{\n";
			serialize_config_object($value);
			echo "},\n";
		}
		else {
			echo $value.",\n";
		}
	}

	function serialize_config_array ($config_array) {
		foreach ($config_array as $value) {
			serialize_config_value($value);
		}
	}

	function serialize_config_object ($config_object) {
		foreach ($config_object as $key => $value) {
			echo $key.": ";
			serialize_config_value($value);
		}
	}

	function build_reveal_configuration() {
		global $config;
		echo "Reveal.initialize({\n";
		serialize_config_object($config->{'revealConfig'});
		echo "});\n";
	}

?>