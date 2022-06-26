<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- List of research areas for the individual -->
<#assign industrySectors = propertyGroups.pullProperty("https://experts.colorado.edu/ontology/vivo-fis#hasSector")!> 
<#if industrySectors?has_content> <#-- true when the property is in the list, even if not populated (when editing) -->
    <#assign localName = industrySectors.localName>
    <h2 id="${localName}" class="mainPropGroup">
        Industry Sectors 
        <img id="researchAreaIcon" src="${urls.images}/individual/research-group-icon.png" alt="${i18n().research_areas}" />
        <@p.addLink industrySectors editable /> <@p.verboseDisplay industrySectors />
    </h2>
    <ul id="individual-${localName}" role="list" >
        <@p.objectProperty industrySectors editable />
    </ul> 
</#if>   
