<cfobject component="listpets" name="listpets">
<cfinvoke component="#listpets#" method="getAllPets" returnvariable="getAllPets" />
<div class="container-fluid">
	<cfoutput query="getAllPets">
	<div class="row">
		<div class="col-sm-6">
			<h3>#petname#</h3>
		</div>
		<div class="col-sm-6">
			<button class="btn btn-success" id="btn_view_pet_#petid#" ic-target="##div-view-pet#petid#" ic-get-from="ic-list-pet-activity/?petid=#petid#">View Pet Activity</button>
			<button class="btn btn-warning" id="btn_add_pet_#petid#">Add Pet Activity</button>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12" id="div-view-pet#petid#">
			
		</div>
	</div>
		<hr />
	</cfoutput>
</div>