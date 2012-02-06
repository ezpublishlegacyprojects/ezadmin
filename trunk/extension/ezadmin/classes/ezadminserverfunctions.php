<?php

class ezAdminServerFunctions extends ezjscServerFunctions
{
	public static function get_name( $NodeID, $InputID )
	{
		$http = eZHTTPTool::instance();
        $NodeID = $http->postVariable( 'NodeID' );
		$node = eZContentObjectTreeNode::fetch( $NodeID );
		$tpl = eZTemplate::factory();
		if ($node instanceof eZContentObjectTreeNode)
		{
			$tpl->setVariable( 'auto_name', $node->attribute("name") );
			$tpl->setVariable( 'auto_url', $node->urlAlias() );
		}        
		else
		{
			$tpl->setVariable( 'error', 1 );
		}
		
        $result['template'] = $tpl->fetch( 'design:ezadmin/migration_node_info.tpl' );
        return $result;
		
	}
}
