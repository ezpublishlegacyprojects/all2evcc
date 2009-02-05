<div class="context-block">
    <div class="box-header">
        <div class="box-tc">
            <div class="box-ml">
                <div class="box-mr">
                    <div class="box-tl">
                        <div class="box-tr">
                            <div>
                                <h1 class="context-title">Varnish Service</h1>
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
                <form method="post" action="{'/all2evcc/varnish_control/service'|ezurl(no)}" onsubmit="javascript:return confirmClick(this)">
                    <table class="list cache" cellspacing="0">
                        <tbody>
                            <tr class="bglight">
                                <th width="60%">Start Varnish</th>
                                <td width="40%"><input class="button" type="submit" value="Start Varnish" name="Start" /></td>
                            </tr>
                            <tr class="bgdark">
                                <th>Stop Varnish</th>
                                <td><input class="button" type="submit" value="Stop Varnish" name="Stop" /></td>
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
                {literal}
                <script type="text/javascript">
                    function confirmClick(obj){
                        return confirm("Are you sure that you want to START/STOP the service?");
                    }
                </script>
                {/literal}
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
