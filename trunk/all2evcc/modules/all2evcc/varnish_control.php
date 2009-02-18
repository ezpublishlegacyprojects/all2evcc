<?php

include_once("extension/all2evcc/classes/all2evccclass.php");
include_once('kernel/common/template.php');

$Module = $Params["Module"];
$view = $Params['View'];

$varnish = new all2eVarnish();

switch ($view) 
{
    case "stats":
    {
        $erg = $varnish->stats();
        $template = "varnish_stats.tpl";    
    }
    break;
    case "status":
    {
        $erg = $varnish->status();
        $template = "varnish_status.tpl";    
    }
    break;
    case "purging":
    {
        if( $Module->isCurrentAction( 'PurgeVarnishHash' ) )
        {
            $http = eZHTTPTool::instance();
            if( $http->hasPostVariable( 'DomainName' ) && trim($http->postVariable( 'DomainName' )) != "" )
            {
                $blockname = $http->postVariable( 'DomainName' );
            }
            else
            {
                $blockname = "default";
            }
            $erg = $varnish->purgeDomain($blockname);
        }
        elseif( $Module->isCurrentAction( 'PurgeVarnishUrl' ) )
        {
            $erg = $varnish->purgeAll();
        }
        else
        {
            $erg["Message"] = "";
        }
        $template = "varnish_purging.tpl";    
    }
    break;
    case "service":
    {
        if( $Module->isCurrentAction( 'StartVarnish' ) )
        {
            $erg = $varnish->start();
        }
        elseif( $Module->isCurrentAction( 'StopVarnish' ) )
        {
            $erg = $varnish->stop();
        }
        else
        {
            $erg["Message"] = "Take care of stopping Varnish, if your domain is depended on it!";
        }
        $template = "varnish_service.tpl";    
    }
    break;
    case "terminal":
    {
        $erg = $varnish->freeRequest();
        $template = "varnish_terminal.tpl";    
    }
    break;
    default:
    {
        $erg = $varnish->stats();
        $template = "varnish_control.tpl";    
    }
    break;
}

$tpl = templateInit();

$tpl->setVariable('varnish',$erg);

$Result = array();
$Result['pagelayout'] = true;
$Result['content'] = $tpl->fetch( "design:all2evcc/".$template );
$Result['path'] = array( array( 'url' => '/all2evcc/varnish_control',
                                'text' => 'Varnish Control Center'
                         )
                  );
$Result['left_menu'] = 'design:all2evcc/left_menu.tpl';

?>
