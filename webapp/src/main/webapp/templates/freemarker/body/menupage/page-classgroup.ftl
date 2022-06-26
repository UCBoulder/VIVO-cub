<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#include "menupage-checkForData.ftl">

<#if !noData>
    <section id="menupage-intro" role="region">
        <h2>${page.title}</h2>
        <#if page.title == "Equipment & Analysis">
            <div id="announcement">New items are continually being added. Please contact the <a href="mailto:industry@colorado.edu">Office of Industry Collaboration</a> for assistance and check back often to see new information.</div>
        </#if>
        <#if page.title == "Honors">
            <div id="announcement">This list represents honors received by faculty with a current CU Experts profile. This information includes a large portion of honors received but is not yet complete. Historical and current information about honors received by Boulder campus faculty will be added as the project continues.</div>
        </#if>
    </section>
    
    <#include "menupage-browse.ftl">
    
    ${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/menupage/menupage.css" />')}
    
    <#include "menupage-scripts.ftl">
<#else>
    ${noDataNotification}
</#if>
