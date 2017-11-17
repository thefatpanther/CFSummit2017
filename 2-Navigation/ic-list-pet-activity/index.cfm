
   <cfif isDefined("URL.petid")>
    <cfparam name="petid" type="numeric" />
     <cfset petid = #URL.petid# />
</cfif>
<cfobject component="listpetactivity" name="listpetactivity">
<cfinvoke component="#listpetactivity#" method="getPetActivity" returnvariable="getPetActivity" petid="#petid#" />
<cfquery name="getpetactivitytypes" datasource="cfsummit2017">
	SELECT * 
	FROM dbo.tbl_events
	WHERE eventactive = 1
</cfquery>

<cfif getPetActivity.RECORDCOUNT EQ 0>
<cfquery name="nopetactivities" datasource="cfsummit2017">
	SELECT *
	FROM dbo.tbl_pets
	WHERE petid = #URL.petid#
</cfquery>
<cfoutput query="nopetactivities" maxrows="1">
	<h1 class="pull-left">#petname#</h1>
	<button ic-get-from="ic-list-pets/" ic-target="##viewport" class="btn btn-success pull-right">(back to pets)</button>

<div class="clearfix"></div>
<form name="addpetactivity" class="form-inline">
	<input type="hidden" name="petid" value="#petid#"
	<div class="form-group">
	
	<input type="text" name="note" class="form-control" placeholder="Note" />
	<input type="datetime" class="form-control" name="activitydatetime" value="#dateTimeFormat(NOW(), "mm/dd/yyyy hh:nn tt")#" />
	<select name="activitiesid" class="form-control">
		<cfloop query="getpetactivitytypes">
			<option value="#eventid#">#eventdesc#</option>
		</cfloop>
	</select>
	<button ic-post-to="ic-list-pet-activity/addpetactivity.cfm" ic-target="##viewport" class="btn btn-warning">Add new activity</button>
	</div>
</form>
</cfoutput>
</cfif>

<cfoutput query="getPetActivity" maxrows="1">
	<h1 class="pull-left">#petname#</h1>
	<button ic-get-from="ic-list-pets/" ic-target="##viewport" class="btn btn-success pull-right">(back to pets)</button>

<div class="clearfix"></div>
<form name="addpetactivity" class="form-inline">
	<input type="hidden" name="petid" value="#petid#"
	<div class="form-group">
	
	<input type="text" name="note" class="form-control" placeholder="Note" />
	<input type="datetime" class="form-control" name="activitydatetime" value="#dateTimeFormat(NOW(), "mm/dd/yyyy hh:nn tt")#" />
	<select name="activitiesid" class="form-control">
		<cfloop query="getpetactivitytypes">
			<option value="#eventid#">#eventdesc#</option>
		</cfloop>
	</select>
	<button ic-post-to="ic-list-pet-activity/addpetactivity.cfm" ic-target="##viewport" class="btn btn-warning">Add new activity</button>
	</div>
</form>
</cfoutput>
<div id="viewport_petactivities">
<table class="table table-striped">
	<thead>
		<tr>
			<th>Desc.</th>
			<th>Note</th>
			<th>Date</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="getPetActivity">
		<tr>
			<td>#EVENTDESC#</td>
			<td>#NOTE#</td>
			<td>#dateTimeFormat(activitydatetime, "mm/dd/yyyy hh:nn tt")#</td>
		</tr>	
		</cfoutput>
	</tbody>
</table>
</div>