<?php
Route::set('default', '(<controller>(/<action>(/<id>)))')
	->defaults(array(
	'controller'	=> 'index',
	'action'		=> 'index',
	'directory'		=> 'public',
	)
);