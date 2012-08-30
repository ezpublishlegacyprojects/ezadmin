<?php
$Module = array( 'name' => 'Admin Remote' );

$ViewList = array();
$ViewList['content'] = array(
    'functions' => array( 'content' ),
    'default_navigation_part' => 'ezadmin',
    'script' => 'content.php',
    'params' => array( 'Type' ) );
