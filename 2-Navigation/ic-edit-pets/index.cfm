<!---<cfobject component="listpets" name="listpets">
<cfinvoke component="#listpets#" method="getAllPets" returnvariable="getAllPets" />--->
			<cfquery name="getAllPets" datasource="CFSummit2017" result="listAllPets">
				SELECT petid, petname, petactive
				FROM dbo.tbl_pets
				WHERE petactive = 'True'
			</cfquery>
		
<div class="container-fluid">
	<cfoutput query="getAllPets">
		<div id="div_editpets#petid#" class="row">
			<form class="form-inline" name="frm_editpet_#petid#">
			<div class="form-group">
				<input type="hidden" name="petid" id="petid" value="#petid#" />
				<input type="text" name="petname" value="#petname#" class="form-control" />
				<button type="button" ic-target="##viewport" ic-post-to="ic-edit-pets/editpet.cfm" class="btn btn-success" name="btn_edit#petid#">Edit pet</button>
				<button type="button" ic-post-to="ic-edit-pets/deletepet.cfm" ic-target="##viewport" class="btn btn-danger">X</button>
			</div>
			</form>
		</div>
		<hr />
	</cfoutput>
	<form class="form-inline" name="frm_editpet_#petid#">
		<div class="form-group">
			<input type="text" name="petname" value="" class="form-control" />
			<button type="button" class="btn btn-success" name="btn_edit" ic-post-to="ic-edit-pets/addpet.cfm" ic-target="#viewport">Add pet</button>
		</div>
		</form>
</div>