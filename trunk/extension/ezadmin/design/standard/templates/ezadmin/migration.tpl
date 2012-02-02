<form action={"/admin/migration"|ezurl} method="post" name="migration" id="migration">



    <p>Please provide input data.</p>
    <label>Source ID: <input type="text" value="" /></label>
	<label>Operation: <select name="operation">
                 <option value="All" selected="selected">MoveTo</option>
                 <option value="Content">MoveContents</option>
    </select>
	</label>
	<label>Target ID: <input type="text" value="" /></label>
  <p>
    <input class="button" type="submit" name="Skip" value="Skip">
    <input class="button" type="submit" name="Execute" value="Execute">    
  </p>
</form>