
<div class="append_20">

<h2 class="subhead">GeoEncoder Plugin {insert name="help_link" id='geoencoder'}</h2>
<p>
The GeoEncoder plugin plots a post's responses on a Google Map, and can list them by distance from the original poster. 
</p>
<p>To use it, on a post detail page, click on "Response map" and "Nearest responses" under "GeoEncoder" on the
sidebar menu. <a href="http://thinkupapp.com/docs/userguide/settings/plugins/geoencoder.html">Learn more</a>.
</p>
<br>

<div id="contact-admin-div" style="display: none; margin-top: 20px;">
{include file="_plugin.admin-request.tpl"}
</div>

{if $options_markup}
<div {if $user_is_admin}style="border: solid gray 1px;padding:10px;margin:20px"{/if}>
<!-- Configure the Geoencoder Plugin -->
{if $user_is_admin}<h2 class="subhead">Configure the GeoEncoder Plugin</h2>
<ol style="margin-left:40px"><li><a href="http://code.google.com/apis/maps/signup.html">Sign up for a Google Maps API key</a>.</li>
<li>Set the web site URL to <pre>http{if $smarty.server.HTTPS}s{/if}://{$smarty.server.SERVER_NAME}{$site_root_path}</pre></li>
<li>Enter the Google-provided API key here.</li></ol>
{/if}
<p>
{$options_markup}
<p>
{literal}
<script type="text/javascript">
if( ! required_values_set && ! is_admin) {
    $('#contact-admin-div').show();
}
{/literal}
</script>
{/if}
</div>
<br>
