<?php
$Module =& $Params['Module'];
$http = eZHTTPTool::instance();

if ( $http->hasPostVariable('Skip') ){
    $Module->redirectToView( 'menu' );
}

$tpl = eZTemplate::factory();
if ( $http->hasPostVariable('Execute') )
{
    if( $http->hasPostVariable('operation') and $http->postVariable('operation') )
    {
        $db = eZDB::instance();
    }
}

$Result = array();
$Result['left_menu'] = "design:parts/ezadmin/menu.tpl";
$Result['content'] = $tpl->fetch( "design:ezadmin/migration.tpl" );
$Result['path'] = array( array( 'url' => false,
                        'text' => 'Migration Manager' ) );