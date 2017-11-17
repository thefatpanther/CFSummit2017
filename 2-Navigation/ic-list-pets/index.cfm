<cfobject component="listpets" name="listpets">
<cfinvoke component="#listpets#" method="getAllPets" returnvariable="getAllPets" />
<div class="container-fluid">
	<cfoutput query="getAllPets">
	<div class="row">
		<div class="col-sm-6">
			<h3>#petname#</h3>
		</div>
		<div class="col-sm-6 text-right">
			<button class="btn btn-success" id="btn_view_pet_#petid#" ic-target="##viewport" ic-get-from="ic-list-pet-activity/?petid=#petid#">View Pet Activity</button>
			
		</div>
	</div>
	
		<hr />
	</cfoutput>
</div>