<?php
/**
 * File frame.php
 *
 * @package ezadmin
 * @version //autogentag//
 * @copyright Copyright (C) 2007 xrow. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl.txt GPL License
 */
$Module =& $Params['Module'];
$http =& eZHTTPTool::instance();

if ( $Module->isCurrentAction( 'Exit' ) )
{
    return $Module->redirectToView( "menu" );
}

include_once( 'kernel/common/template.php' );
$tpl =& templateInit();

$tpl->setVariable( 'modulename', $Params['modulename'] );
$tpl->setVariable( 'view', $Params['view'] );

$Result = array();
$Result['left_menu'] = "design:parts/ezadmin/menu.tpl";
$Result['content'] = $tpl->fetch( "design:ezadmin/frame.tpl" );
$Result['path'] = array( array( 'url' => false,
                        'text' => 'Admin' ) );
?>