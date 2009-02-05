<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h4>Varnish</h4>

</div></div></div></div></div></div>

<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-bl"><div class="box-br"><div class="box-content">

{section show=eq( $ui_context, 'edit' )}
<ul>
    <li><div><span class="disabled">Varnish Control Center</span></div></li>
</ul>

{section-else}
<ul>
    <li><div><a href={'/all2evcc/varnish_control'|ezurl}>Varnish Control Center</a></div></li>
    <li><div><a href={'/all2evcc/varnish_control/stats'|ezurl}>Varnish Stats</a></div></li>
    <li><div><a href={'/all2evcc/varnish_control/status'|ezurl}>Varnish Status</a></div></li>
    <li><div><a href={'/all2evcc/varnish_control/purging'|ezurl}>Varnish Purging</a></div></li>
    <li><div><a href={'/all2evcc/varnish_control/service'|ezurl}>Varnish Service</a></div></li>
    <li><div><a href={'/all2evcc/varnish_control/terminal'|ezurl}>Varnish Terminal</a></div></li>
</ul>

{/section}

</div></div></div></div></div></div>


