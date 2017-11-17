<cfquery name="addpet" datasource="CFSummit2017">
	INSERT INTO tbl_pets (petname, petactive)
	VALUES(<cfqueryparam value="#FORM.petname#" cfsqltype="CF_SQL_CHAR" />,1)
</cfquery>
<cfquery name="getAllPets" datasource="CFSummit2017" result="listAllPets">
				SELECT petid, petname, petactive
				FROM dbo.tbl_pets
				WHERE petactive = 'True'
			</cfquery>
		
<cfinclude template="edit_pets_global.cfm" />