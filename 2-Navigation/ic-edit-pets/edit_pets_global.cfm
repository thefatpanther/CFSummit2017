<div class="container-fluid">
	<cfoutput query="getAllPets">
		<div id="div_editpets#petid#" class="row">
			<form class="form-inline" name="frm_editpet_#petid#">
			<div class="form-group">
				<input type="hidden" name="petid" id="petid" value="#petid#" />
				<input type="text" name="petname" value="#petname#" class="form-control" />
				<button type="button" class="btn btn-success" name="btn_edit#petid#">Edit pet</button>
				<button type="button" ic-post-to="ic-edit-pets/deletepet.cfm" ic-target="##viewport" class="btn btn-danger">X</button>
			</div>
			</form>
		</div>
		<hr />
	</cfoutput>
	<form class="form-inline" name="frm_editpet_#petid#">
		<div class="form-group">
			<input type="text" name="petname" value="" class="form-control" />
			<button type="button" class="btn btn-success" name="btn_edit" ic-post-to="ic-add-pets/addpet.cfm" target="#viewport">Edit pet</button>
		</div>
		</form>
</div>