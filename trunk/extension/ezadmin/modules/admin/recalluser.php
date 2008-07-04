<?php

ext_class("ezadmin","ezuseraddition");

$Module =& $Params["Module"];
$http = eZHTTPTool::instance();

if ( $http->hasSessionVariable( 'eZUserAdditionOldID' ) )
{
    eZUserAddition::recallUser();
}
else
{
    eZDebug::writeError('No informer session found',"eZAdmin change User");
    return $Module->handleError( EZ_ERROR_KERNEL_ACCESS_DENIED, 'kernel' );
}
$userRedirectURI = $Module->actionParameter( 'UserRedirectURI' );
$ini = eZINI::instance();
if ( trim( $userRedirectURI ) == "" )
{
    // Only use redirection if requireuser login is disabled
    $requireUserLogin = ( $ini->variable( "SiteAccessSettings", "RequireUserLogin" ) == "true" );
    if ( !$requireUserLogin )
    {
	if ( $http->hasSessionVariable( "LastAccessesURI" ) )
	    $userRedirectURI = $http->sessionVariable( "LastAccessesURI" );
    }

    if ( $http->hasSessionVariable( "RedirectAfterLogin" ) )
    {
	$userRedirectURI = $http->sessionVariable( "RedirectAfterLogin" );
    }
}
$redirectionURI = $userRedirectURI;
if ( $redirectionURI == '' )
        $redirectionURI = $ini->variable( 'SiteSettings', 'DefaultPage' );

if ( $http->hasGetVariable( 'RedirectionURI' ) )
{
    $Module->redirectTo( $http->getVariable('RedirectionURI') );
}
else if($redirectionURI)
{
    $Module->redirectTo( $redirectionURI );
}
else
{
    $Module->redirectTo( "/" );
}
?>