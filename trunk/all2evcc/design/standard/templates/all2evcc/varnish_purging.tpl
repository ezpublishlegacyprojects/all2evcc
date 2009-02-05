<div class="context-block">
    <div class="box-header">
        <div class="box-tc">
            <div class="box-ml">
                <div class="box-mr">
                    <div class="box-tl">
                        <div class="box-tr">
                            <div>
                                <h1 class="context-title">Varnish Purging</h1>
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
                <form method="post" action="{'/all2evcc/varnish_control/purging'|ezurl(no)}">
                    <table class="list cache" cellspacing="0">
                        <tbody>
                            <tr class="bglight">
                                <th width="60%">Clear Varnish Domain Caches</th>
                                <td width="40%"><input class="button" type="submit" value="Clear Domain Cache" name="PurgeHash" /></td>
                            </tr>
                            <tr class="bgdark">
                                <th>Clear all Varnish Caches</th>
                                <td><input class="button" type="submit" value="Clear all Varnish Caches" name="PurgeUrl" /></td>
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
