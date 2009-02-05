<div class="context-block">
    <div class="box-header">
        <div class="box-tc">
            <div class="box-ml">
                <div class="box-mr">
                    <div class="box-tl">
                        <div class="box-tr">
                            <div>
                                <h1 class="context-title">Varnish Terminal</h1>
                            </div>
                            <div class="header-mainline"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    <div class="box-ml">
        <div class="box-mr">
            <div class="box-content">
                <form method="post" action="{'/all2evcc/varnish_control/terminal'|ezurl(no)}">
                    <table class="list cache" cellspacing="0">
                        <tbody>
                            <tr class="bglight">
                                <th width="60%">Send a request to Varnish</th>
                                <td width="20%"><input type="text" name="FreeTextRequest" value="{$varnish.terminal}" /></td>
                                <td width="20%"><input class="button" type="submit" value="OK" name="FreeRequest" /></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <table cellspacing="0" class="list">
                    <tr>
                        <td colspan="7">
                            <pre>{$varnish.Message|wash()}</pre>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="controlbar">
        <div class="box-bc">
            <div class="box-ml">
                <div class="box-mr">
                    <div class="box-tc">
                        <div class="box-bl">
                            <div class="box-br">
                                &nbsp;
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
