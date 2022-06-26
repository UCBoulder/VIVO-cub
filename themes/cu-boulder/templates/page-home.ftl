<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<@widget name="login" include="assets" />

<#import "lib-home-page.ftl" as lh>

<!DOCTYPE html>
<html lang="en">
    <head>
        <#include "head.ftl">
        <#if geoFocusMapsEnabled >
            <#include "geoFocusMapScripts.ftl">
        </#if>
        <script type="text/javascript" src="${urls.base}/js/homePageUtils.js?version=x"></script>
        <script type="text/javascript" src="/themes/cu-boulder/js/scroll.js"></script>
    </head>
    
    <body class="${bodyClasses!} onload="${bodyOnload!}">
        <@lh.facultyMemberCount  vClassGroups! />

        <div id="banner">
        <#include "identity.ftl">
        
        <#include "menu.ftl">
        
            <section id="intro" role="region">
                <!-- Background Image licensed under the Attribution-ShareAlike 2.0 Generic License. Photographer: www.learningDSLRVideo.com -->
                <h2>Welcome to CU Experts</h2>
                
                <p>CU Experts is a research and expertise discovery tool that enables collaboration among researchers across all disciplines.</p>
                <p>Browse or search information on CU Boulder people and research.</p>
                
<section id="search-home" role="region">
                <fieldset>
                    <legend>Search form</legend>
                    <form id="search-home-vivo" action="${urls.search}" method="post" name="search-home" role="search">
                        <div id="search-home-field">
                            <input type="text" placeholder="Search..." name="querytext" class="search-home-vivo" value="${querytext!}" />
                            <input type="submit" value="Search" class="search">
                        </div>
                    </form>
                </fieldset>
            </section> <!-- #search-home -->
            <a href="#ForX" class="learnmore"><div class="larger">LEARN MORE ABOUT</div> Faculty Profiles, Industry Collaboration, Interviewing Experts,<br/> and Faculty Achievements</a>
            </section> <!-- #intro -->
        <section id="ForX" role="region">
           <h2> CU Experts is... </h2>
           <div class="card-container">
           <div class="card">
           <div class="vert-center">
           <h3>For Faculty</h3>
           <p>Need to update your faculty profile? Click <a href="https://www.colorado.edu/fis/cu-experts#updating">
            here</a> to find out how.</p>
           </div>
           </div>
           <div class="card">
           <div class="vert-center">
           <h3>For Industry Collaboration</h3>
           <p><a href="http://www.colorado.edu/industry/">The Office of Industry Collaboration</a> promotes and supports synergistic opportunities
                for engagement between CU Boulder and industry and business. Strengthening these connections
                provides benefits to partners, students, and local, state, and national economies.</p>
           </div>
           </div>
           <div class="card last">
           <div class="vert-center">
           <h3>For Journalists</h3>
           <p>
               The University of Colorado Boulder provides <a href="https://experts.colorado.edu/people">faculty expertise</a> to local, national and international media on a variety of topics. Find information about covering stories on campus and get help arranging interviews with faculty experts on the <a href="http://www.colorado.edu/today/journalists">For Journalists</a> page of CU Boulder Today.
           </p>
           </div>
           </div>
           <div class="clear"></div>
           </div>
        </section>
        <section id="awards">
        <div class="card-container">
            <h2>A&nbsp;Celebration of Faculty Achievement</h2>
            <div class="crunch-80">
            <div id="awards-txt" class="col-1-2"><p>Faculty Affairs is pleased to recognize CU-Boulder's faculty for their important work.
                This annual publication features awards at the campus level and beyond.</p></div>
            <div id="awards-img" class="col-1-2"><p><a href="http://www.colorado.edu/facultyaffairs/sites/default/files/attached-files/final_2018_celebration_of_faculty_achievement.pdf">
                <img style="display: block; margin-left: auto; margin-right: auto" src="/themes/cu-boulder/images/Faculty_Awards_Cover.png" height="111" width="60" alt="A Celebration of Faculty Achievement 2018"></a></p>
            <p style="text-align: center"><a href="http://www.colorado.edu/facultyaffairs/sites/default/files/attached-files/final_2018_celebration_of_faculty_achievement.pdf">2018</a>
                &nbsp;&nbsp;&nbsp;
                <a href="http://www.colorado.edu/facultyaffairs/celebration-faculty-achievement">Prior Years</a></p>
            </div>
             <div class="clear"></div> 
            </div>
        </div>
        </section> 
        <!-- Statistical information relating to property groups and their classes; displayed horizontally, not vertically-->
        <@lh.allClassGroups vClassGroups! />
        <#include "footer.ftl">
        <@lh.listAcademicDepartments />
    <script>       
        var i18nStrings = {
            researcherString: '${i18n().researcher}',
            researchersString: '${i18n().researchers}',
            currentlyNoResearchers: '${i18n().currently_no_researchers}',
            countriesAndRegions: '${i18n().countries_and_regions}',
            countriesString: '${i18n().countries}',
            regionsString: '${i18n().regions}',
            statesString: '${i18n().map_states_string}',
            stateString: '${i18n().map_state_string}',
            statewideLocations: '${i18n().statewide_locations}',
            researchersInString: '${i18n().researchers_in}',
            inString: '${i18n().in}',
            noFacultyFound: '${i18n().no_faculty_found}',
            placeholderImage: '${i18n().placeholder_image}',
            viewAllFaculty: '${i18n().view_all_faculty}',
            viewAllString: '${i18n().view_all}',
            viewAllDepartments: '${i18n().view_all_departments}',
            noDepartmentsFound: '${i18n().no_departments_found}'
        };
        // set the 'limmit search' text and alignment
        if  ( $('input.search-homepage').css('text-align') == "right" ) {       
             $('input.search-homepage').attr("value","${i18n().limit_search} \u2192");
        }  
    </script>

    </body>
</html>
