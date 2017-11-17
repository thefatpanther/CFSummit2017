<cfquery name="addpetactivity" datasource="cfsummit2017">
	INSERT INTO dbo.tbl_pet_activities (petid, note,activitydatetime, activitiesid)
	VALUES (#FORM.petid#, '#FORM.note#', '#FORM.activitydatetime#', #FORM.activitiesid#)
</cfquery>
<cflocation url="index.cfm?petid=#FORM.petid#" addtoken="No" />