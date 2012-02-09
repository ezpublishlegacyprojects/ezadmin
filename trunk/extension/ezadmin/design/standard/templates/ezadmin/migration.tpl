<form action={"/admin/migration"|ezurl} method="post" name="migration" id="migration">
    <p>Please provide input data.</p>
    <label>Source ID: 
        <input onchange="jQuery('#migration').ezadmin( 'showNodeName', {literal}{'type':'source'}{/literal} );" name="source_id" id="source_id" type="text" value="" />
        <span id="source_name"></span>
    </label>
    <label>Operation: 
        <select name="operation">
            <option value="1" selected="selected">MoveSubtree</option>
            <option value="2">MoveContents</option>
            <option value="3">SwapNode</option>
        </select>
    </label>
    <label>Target ID: 
        <input onchange="jQuery('#migration').ezadmin( 'showNodeName', {literal}{'type':'target'}{/literal} );" name="target_id" id="target_id" type="text" value="" />
        <span id="target_name"></span>
    </label>
    <p>
        <input class="button" type="submit" name="Execute" value="Execute" />
        <input class="button" type="submit" name="Skip" value="Skip" />
    </p>
</form>
{if is_set($error)}
<div class="message-error">
    <ul>
        <li>ERROR:: {$operation}</li>
    </ul>
</div>
{elseif is_set($success)}
<div class="message-feedback">
    <ul>
       <li>SUCCESS:: {$operation}</li>
    </ul>
</div>
{/if}