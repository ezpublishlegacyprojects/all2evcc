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
                    {def $domains = ezini( 'ServerSettings', 'AvailableDomains', 'all2evarnish.ini' )}
                    {def $tooltip = ""}
                    <table class="list cache" cellspacing="0">
                        <tbody>
                            <tr class="bglight">
                                <th width="50%">Clear Varnish Domain Caches</th>
                                <td width="20%">
                                    <select name="DomainName[]" multiple="multiple" size="5">
                                        {foreach $domains as $domain}
                                            {set $tooltip = ezini( $domain, 'VarnishDomainNames', 'all2evarnish.ini' )}
                                            <option value="{$domain}" title="{foreach $tooltip as $tt}{$tt}, {/foreach}" >{$domain}</option>
                                        {/foreach}
                                    </select>
                                </td>
                                <td width="30%"><input class="button" type="submit" value="Clear Domain Cache" name="PurgeHash" /></td>
                            </tr>
                            <tr class="bgdark">
                                <th>Clear all Varnish Caches</th>
                                <td></td>
                                <td><input class="button" type="submit" value="Clear all Varnish Caches" name="PurgeUrl" /></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <table cellspacing="0" class="list">
                    <tr>
                        <td colspan="7">
                            {if $varnish.0}
                                {foreach $varnish as $message}
                                    <pre>{$message.Message|wash()}</pre>
                                {/foreach}
                            {else}
                                <pre>{$varnish.Message|wash()}</pre>
                            {/if}
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
