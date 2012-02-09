<?php
$Module = & $Params['Module'];
$http = eZHTTPTool::instance();

if ( $http->hasPostVariable( 'Skip' ) )
{
    $Module->redirectToView( 'menu' );
}

$tpl = eZTemplate::factory();

if ( $http->hasPostVariable( 'Execute' ) )
{
    $source = (int) $http->postVariable( 'source_id' );
    $target = (int) $http->postVariable( 'target_id' );
    
    if ( empty( $source ) || empty( $target ) || ! eZContentObjectTreeNode::fetch( $target ) instanceof eZContentObjectTreeNode || ! eZContentObjectTreeNode::fetch( $source ) instanceof eZContentObjectTreeNode )
    {
        $error = true;
        $operation = "An error has occured. Please provide valid NodeID's for your choosen Operation!";
    }
    else
    
    {
        $db = eZDB::instance();
        $db->begin();
        switch ( $http->postVariable( 'operation' ) )
        {
            case '1':
                if ( eZContentObjectTreeNodeOperations::move( $source, $target ) !== true )
                {
                    $error = true;
                }
                else
                {
                    $success = true;
                }
                $operation = "Moving Node " . $source . " to " . $target . "";
                break;
            case '2':
                $params = array();
                $nodes = eZContentObjectTreeNode::subTreeByNodeID( $params, $source );
                if ( ! $nodes )
                {
                    $error = true;
                }
                foreach ( $nodes as $node )
                {
                    if ( eZContentObjectTreeNodeOperations::move( $node->attribute( 'node_id' ), $target ) !== true )
                    {
                        $error = true;
                    }
                    else
                    {
                        $success = true;
                    }
                }
                $operation = "Moving Children from Node " . $source . " to " . $target . "";
                break;
            case '3':
                $return = eZContentOperationCollection::swapNode( $source, $target, array( 
                    $source , 
                    $target 
                ) );
                ( ! isset( $return['status'] ) ) ? $error = true : $success = true;
                $operation = "Swapping Node " . $source . " with " . $target . "";
                break;
        }
        $db->commit();
    }
}
$tpl->setVariable( 'operation', $operation );

( $error === true ) ? $tpl->setVariable( 'error', true ) : null;
( $success === true ) ? $tpl->setVariable( 'success', true ) : null;

$Result = array();
$Result['left_menu'] = "design:parts/ezadmin/menu.tpl";
$Result['content'] = $tpl->fetch( "design:ezadmin/migration.tpl" );
$Result['path'] = array( 
    array( 
        'url' => false , 
        'text' => 'Migration Manager' 
    ) 
);