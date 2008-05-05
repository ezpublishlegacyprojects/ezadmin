<?php
/**
 * File menu.php
 * @package ezadmin
 * @version //autogentag//
 * @copyright Copyright (C) 2007 xrow. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl.txt GPL License
 */
$Module =& $Params['Module'];
include_once( 'kernel/common/template.php' );
$tpl =& templateInit();
$Result = array();
$Result['left_menu'] = "design:parts/ezadmin/menu.tpl";
$Result['content'] = $tpl->fetch( "design:ezadmin/menu.tpl" );
$Result['path'] = array( array( 'url' => false,
                        'text' => 'Menu' ) );
?>