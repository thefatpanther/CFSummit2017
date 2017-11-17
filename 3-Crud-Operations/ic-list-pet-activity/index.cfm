<cfif isDefined("URL.petid")>
    <cfparam name="petid" type="numeric" />
     <cfset petid = #URL.petid# />
</cfif>
<cfobject component="listpetactivity" name="listpetactivity">
<cfinvoke component="#listpetactivity#" method="getPetActivity" returnvariable="getPetActivity" petid="#petid#" />
<table class="table table-striped">
	<thead>
		<tr>
			<th>Event Desc.</th>
			<th>Event Note</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="getPetActivity">
		<tr>
			<td>#EVENTDESC#</td>
			<td>#NOTE#</td>
		</tr>	
		</cfoutput>
	</tbody>
</table>