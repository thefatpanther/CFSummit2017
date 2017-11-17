<cfcomponent>
	<cffunction name="getAllPets" access="public" returntype="query">
			<cfquery name="getAllPets" datasource="CFSummit2017" result="listAllPets">
				SELECT petid, petname, petactive
				FROM dbo.tbl_pets
				WHERE petactive = 'True'
			</cfquery>
		<cfset myResult=getAllPets>
		<cfreturn myResult>
	</cffunction>
</cfcomponent>