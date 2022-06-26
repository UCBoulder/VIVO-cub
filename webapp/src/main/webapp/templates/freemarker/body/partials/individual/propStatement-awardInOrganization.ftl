<#import "lib-sequence.ftl" as s>

<@showAwardInOrg statement />

<#-- Use a macro to keep variable assignments local; otherwise the values carry over to the
     next statement -->
<#macro showAwardInOrg statement>

   <#-- We remove & and then 'amp;' because Freemarker decides "replace" means "html encode". -->
   <#local award_type=statement.awardName?lower_case?replace(' ', '_')?replace('\'','')?replace('(','')?replace(')','')?replace(',','')?replace('/','')?replace('\\','')?replace('&', '')?replace('amp;','')?replace('.','')>

   <#-- Create invisible DOM element to store data in DOM. This is accessed by a javascript function in
        productMods/templates/freemarker/body/individual/individual-vitro.ftl -->
   <span data-award-type="${award_type}" data-url="${profileUrl(statement.uri("person"))}" data-person-name="${statement.personName}" data-award-name="${statement.awardName}" data-date="${statement.dtv!}">

</#macro>
