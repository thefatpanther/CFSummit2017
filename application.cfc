<cfcomponent
    displayname="Application"
    output="true"
    hint="Handle the application.">
    
    <cfset THIS.Name = "CFSummit2016" />
    <cfset THIS.ApplicationTimeout = CreateTimeSpan( 0, 0, 1, 0 ) />
    <cfset THIS.SessionManagement = true />
    <cfset THIS.SetClientCookies = true />
    <cfset DSN = "CFSummit2016" />
    <cfsetting requesttimeout="20" showdebugoutput="true" enablecfoutputonly="false" />

    <cffunction
        name="OnApplicationStart"
        access="public"
        returntype="boolean"
        output="false"
        hint="Fires when the application is first created.">
        <cfreturn true />
    </cffunction>

    <cffunction
        name="OnSessionStart"
        access="public"
        returntype="void"
        output="false"
        hint="Fires when the session is first created.">
        <cfreturn />
    </cffunction>

    <cffunction
        name="OnRequestStart"
        access="public"
        returntype="void"
        output="true"
        hint="Fires at first part of page processing.">
        <cfif NOT FindNoCase("ic-",#cgi.SCRIPT_NAME#)>
		    <cfinclude template="/inc/hd.cfm" />
        </cfif>
        <cfreturn />
    </cffunction>

    <cffunction
        name="OnRequestEnd"
        access="public"
        returntype="void"
        output="true"
        hint="Fires after the page processing is complete.">
		<cfif NOT FindNoCase("ic-",#cgi.SCRIPT_NAME#)>
            <cfinclude template="/inc/ft.cfm" />
        </cfif>
        <cfreturn />
    </cffunction>

    <cffunction
        name="OnError"
        access="public"
        returntype="void"
        output="true"
        hint="Fires when an exception occures that is not caught by a try/catch.">
        <cfargument
            name="Exception"
            type="any"
            required="true"
            />

        <cfargument
            name="EventName"
            type="string"
            required="false"
            default=""
            />
        <cfreturn />
    </cffunction>

</cfcomponent>