{if and(is_set($error),$error|eq(1))}
	Could not fetch Node. Please doublecheck the ID.
{elseif is_set($error)}
	An error has occured. Please check your permissions.
{else}
	<a href={$auto_url|ezurl()} title="{$auto_name|wash()}">{$auto_name|wash()}</a>
{/if}