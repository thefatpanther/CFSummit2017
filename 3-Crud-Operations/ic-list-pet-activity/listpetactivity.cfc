<cfcomponent>
	<cffunction name="getPetActivity" access="public" returntype="query">
        <cfargument required="yes" type="numeric" name="petid">
        <cfquery name="getPetActivity" datasource="cfsummit2017" result="listPetActivity">
            SELECT 
                tbl_pet_activities.petactivityid, 
                tbl_pet_activities.petid AS activitiespetid, 
                tbl_pet_activities.note, 
                tbl_pet_activities.activitydatetime, 
                tbl_pet_activities.activitiesid, 
                p.petid AS petspetid,
                p.petname as petname,
                e.eventid as eventid,
                e.eventdesc as eventdesc
            FROM tbl_pet_activities
            INNER JOIN tbl_pets p ON tbl_pet_activities.petid = p.petid 
            INNER JOIN tbl_events e ON tbl_pet_activities.activitiesid = e.eventid
            WHERE tbl_pet_activities.petid = #arguments.petid#
        </cfquery>
		<cfset myResult=getPetActivity>
		<cfreturn myResult>
	</cffunction>
</cfcomponent>