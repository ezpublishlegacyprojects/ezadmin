<form action={"/admin/migration"|ezurl} method="post" name="migration" id="migration">
	<p>Please provide input data.</p>
    <label>Source ID: <input id="source_id" class="changer" type="text" value="" /><span id="source_name"></span></label>
	<label>Operation: 
		<select name="operation">
			<option value="All" selected="selected">MoveTo</option>
            <option value="Content">MoveContents</option>
            <option value="Swap">SwapNode</option>
    	</select>
	</label>
	<label>Target ID: <input id="target_id" class="changer" type="text" value="" /><span id="target_name"></span></label>
	<p>
	    <input class="button" type="submit" name="Skip" value="Skip" />
	    <input class="button" type="submit" name="Execute" value="Execute" />    
	</p>
</form>
{literal}
	<script type="text/javascript">
		$('.changer').change(function() {
				var aim = $(this).attr('id').split("_");
				$.ez('ezadmin::get_name', { 'NodeID' : $(this).val() }, function(data) {
		  			$('#' + aim[0] + '_name').html( data.content.template );
		        });
		});
	</script>
{/literal}