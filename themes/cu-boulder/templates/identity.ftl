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

<header id="branding" role="banner">
    <h1 class="vivo-logo"><a title="CU Experts | research & expertise across CU Boulder" href="${urls.home}"><span class="displace">${siteName}</span></a></h1>
    <#-- Since we are using a graphic text for the tagline, we won't render ${siteTagline}
    <#if siteTagline?has_content>
        <em>${siteTagline}</em>
    </#if>-->

    <nav role="navigation">
     
    </nav>
    
    <section id="ucb-search" role="region">

        <#-- inserted/modified CU-Boulder search -->
        <div id="ucb-searchform">
	    <form action="${urls.search}" name="search" role="search">
	        <div id="ucb-inputwrapper">
		    <input type="text" class="ucb-text" name="querytext"
		    placeholder="Search CU Experts" size="15" maxlength="128"/>
                </div>
                <div id="edit-actions">
                    <input type="submit" id="edit-submit" value="Search">
                </div>
                <!-- <input type="image" src="/themes/cu-boulder/images/ucb-submit.png" value="Search" size="22,23" border="0" /> -->
            </form>
        </div>
        <div id="ucb-culinks"><strong>CU:</strong>
              <a href="http://www.colorado.edu/">Home</a> &bull; <a
              href="http://www.colorado.edu/atoz/">A to Z</a> &bull; <a
              href="http://www.colorado.edu/campusmap/">Campus Map</a>
        </div>
        <#-- end CU-Boulder search -->

        <#-- commented out original VIVO search
		    <section id="search" role="region">
		        <fieldset>
		            <legend>Search form</legend>
		            
		            <form id="search-form" action="${urls.search}" name="search" role="search" accept-charset="UTF-8" method="POST"> 
		                <div id="search-field">
		                    <input type="text" name="querytext" class="search-vivo" value="${querytext!}" autocapitalize="off" />
		                    <input type="submit" value="Search" class="search">
		                </div>
		            </form>
		        </fieldset>
        End of commented out code -->
    </section>
</header>
