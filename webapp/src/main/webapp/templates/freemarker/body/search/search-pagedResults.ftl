<#--
Copyright (c) 2012, Cornell University
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.
    * Neither the name of Cornell University nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-->

<#-- Template for displaying paged search results -->

<h2>
<#escape x as x?html>
    Search results for '${querytext}'
    <#if classGroupName?has_content>limited to type '${classGroupName}'</#if>
    <#if typeName?has_content>limited to type '${typeName}'</#if>
</#escape>
<img id="downloadIcon" src="images/download-icon.png" alt="Download Results" title="Download Results" />
</h2>

<script type="text/javascript">
	var url = window.location.toString();	
	if (url.indexOf("?") == -1){
		var queryText = 'querytext=${querytext}';
	} else {
		var urlArray = url.split("?");
		var queryText = urlArray[1];
	}
	
	var urlsBase = '${urls.base}';
</script>

<span id="searchHelp">
    <a href="${urls.base}/searchHelp" title="search help">Not the results you expected?</a>
</span>
<div class="contentsBrowseGroup">

    <#-- Refinement links -->
    <#if classGroupLinks?has_content>
        <div class="searchTOC">
             <div class="searchTOC" id="expertsmap" style="width: 75.5%; margin: 10px 4px 0px 0px;font-size:10pt;color:black;"> <!-- why is this style hardcoded?? -->
                 <!--[IF !lte IE 8]> -->
                 <a href="/expertsmap#${querytext}%7C100%7C0">
                        <img style="position: absolute; margin-top:-25px; margin-left:-90px; width:55px; height:55px; float:left" alt="new feature" src="/themes/cu-boulder/expmap/images/new.png">
                        <img style="width:180px; height:110px; margin-top: -25px; margin-left: -28px; z-index: -1; float:left" alt="experts map" src="/themes/cu-boulder/expmap/images/expertmap2.png">
                 </a>
                 <a href="/expertsmap#${querytext}%7C100%7C0">View results in CU Experts Map</a>
                 <!-- <![endif]-->
             </div> <!-- end searchTOC -->
             <h4>Narrow the results to:</h4>
             <ul>
                 <#list classGroupLinks as link>
                     <li><a href="${link.url}" title="class group link">${link.text}</a></li>
                 </#list>
             </ul>
             <div class="searchTOC" style="width: 75.5%; margin: 10px 4px 0px 0px;font-size:10pt;color:black;">
             </div> <!-- end searchTOC -->
        </div> <!-- end searchTOC -->
    </#if>

    <#if classLinks?has_content>
        <div class="searchTOC">
            <#if classGroupName?has_content>
                <h4>Narrow ${classGroupName} to</h4>
            <#else>
                <h4>Narrow to</h4>
            </#if>
            <ul>           
            <#list classLinks as link>
                <li><a href="${link.url}" title="class link">${link.text}</a></li>
            </#list>
            </ul>
        </div>
    </#if>

    <#-- Search results -->
    <ul class="searchhits">
        <#list individuals as individual>
            <li>                        
            	<@shortView uri=individual.uri viewContext="search" />
            </li>
        </#list>
    </ul>
    

    <#-- Paging controls -->
    <#if (pagingLinks?size > 0)>
        <div class="searchpages">
            Pages: 
            <#if prevPage??><a class="prev" href="${prevPage}" title="previous">Previous</a></#if>
            <#list pagingLinks as link>
                <#if link.url??>
                    <a href="${link.url}" title="page link">${link.text}</a>
                <#else>
                    <span>${link.text}</span> <#-- no link if current page -->
                </#if>
            </#list>
            <#if nextPage??><a class="next" href="${nextPage}" title="next">Next</a></#if>
        </div>
    </#if>
    <br />

    <#-- VIVO OpenSocial Extension by UCSF -->
    <#if openSocial??>
        <#if openSocial.visible>
        <h3>OpenSocial</h3>
            <script type="text/javascript" language="javascript">
                // find the 'Search' gadget(s).
                var searchGadgets = my.findGadgetsAttachingTo("gadgets-search");
                var keyword = '${querytext}';
                // add params to these gadgets
                if (keyword) {
                    for (var i = 0; i < searchGadgets.length; i++) {
                        var searchGadget = searchGadgets[i];
                        searchGadget.additionalParams = searchGadget.additionalParams || {};
                        searchGadget.additionalParams["keyword"] = keyword;
                    }
                }
                else {  // remove these gadgets
                    my.removeGadgets(searchGadgets);
                }
            </script>

            <div id="gadgets-search" class="gadgets-gadget-parent" style="display:inline-block"></div>
        </#if>
    </#if>

</div> <!-- end contentsBrowseGroup -->

${stylesheets.add('<link rel="stylesheet" href="//code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />',
  				  '<link rel="stylesheet" href="${urls.base}/css/search.css" />')}

${headScripts.add('<script src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>',
				  '<script type="text/javascript" src="${urls.base}/js/jquery_plugins/qtip/jquery.qtip-1.0.0-rc3.min.js"></script>',
                  '<script type="text/javascript" src="${urls.base}/js/tiny_mce/tiny_mce.js"></script>'
                  )}

${scripts.add('<script type="text/javascript" src="${urls.base}/js/searchDownload.js"></script>')}
