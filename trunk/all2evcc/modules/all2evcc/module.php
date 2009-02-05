<?php

$Module = array( 'name' => 'all2evcc' );

$ViewList = array();
$ViewList['varnish_control'] = array('script'                   => 'varnish_control.php',
                                     'functions'                => array( 'varnish_control' ),
                                     'params'                   => array( 'View' ),
                                     'default_navigation_part'  => 'all2evccnavigationpart',
                                     'single_post_actions'      => array( 
                                                                          'Start'       => 'StartVarnish',
                                                                          'Stop'        => 'StopVarnish',
                                                                          'PurgeHash'   => 'PurgeVarnishHash',
                                                                          'PurgeUrl'    => 'PurgeVarnishUrl',
                                                                          'Status'      => 'VarnishStatus',
                                                                          'Stats'       => 'VarnishStats',
                                                                          'FreeRequest' => 'FreeVarnishRequest'
                                                                        )
                                    );

$FunctionList = array();
$FunctionList['varnish_control'] = array();

?>
