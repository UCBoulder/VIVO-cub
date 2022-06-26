<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- Custom object property statement view for the roleRealizedIn, roleContributesTo, researchActivities, hasRole 
     and hasClinicalActivities custom list views. See those list view and the PropertyConfig.n3 file for details.
    
     This template must be self-contained and not rely on other variables set for the individual page, because it
     is also used to generate the property statement during a deletion.  
 -->

<#import "lib-datetime.ftl" as dt>
<@showRole statement />

<#-- Use a macro to keep variable assignments local; otherwise the values carry over to the
     next statement -->
<#macro showRole statement>
    <#local linkedIndividual>
        <#if statement.activity??>
            <a href="${profileUrl(statement.uri("activity"))}" title="${i18n().activity_name}">${statement.activityLabel!statement.activityName}</a>
        </#if>
    </#local>
    
    <#local dateTime>
        <@dt.yearIntervalSpan "${statement.dateTimeStart!}" "${statement.dateTimeEnd!}" />
<#-- next line is for year month precision -->
<#--        ${dt.dateTimeIntervalShort(statement.dateTimeStart, "yearMonthPrecision", statement.dateTimeEnd, "yearMonthPrecision", true)!} -->
    </#local>

    
    ${linkedIndividual} 
${'<BR>'}
${statement.roleLabel!} 
${' - '} 
${statement.terms!} 
${'<BR>'}
    ${statement.activityDesc!} 
</#macro>
