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

<#-- Contact form -->

<section class="staticPageBackground feedbackForm" role="region">
    <h2>${title}</h2>
    
    <#if errorMessage?has_content>       
        <section id="error-alert"><img src="${urls.images}/iconAlert.png" role="error alert"/>
            <p>${errorMessage}</p>
        </section>
    </#if>
    <h3><u>For Faculty and Staff at CU Boulder</u></h3>
    <h4>Questions about data content of your CU Experts faculty profile?</h4>

    <p>Contact data support at 303-492-3055 or email <a href="mailto:kristina.cizmar@colorado.edu">kristina.cizmar@colorado.edu</a>. Faculty interested in updating data currently 
    showing on their CU Experts profile can check how to change their profile data at <a href="https://experts.colorado.edu/about#updating">this site</a>. Research interest, 
    international activities, profile pictures and more are updated using the campus FRPA application accessible to faculty through the CU portal.</p>
    
    <h4>Questions about ORCID iD?</h4>
    <p>Contact Boulder campus <a href="mailto:orcid-support@colorado.edu">ORCID support</a>.  See the campus <a href="http://ucblibraries.colorado.edu/ScholarlyCommunications/ORCID/">ORCID support website</a> 
       for more information about how the Boulder campus is using ORCID iDs and the registration process.</p>

    <h4>Questions about faculty Honors and Awards information?</h4>
    <p>Please contact <a href="mailto:facultyawards@colorado.edu">facultyawards@colorado.edu</a> or call 303-492-3055. The Honors and Awards Data initiative is an ongoing data collection project.</p>

    <h4>Need more information about CU Experts?</h4>
    <p>CU Experts is hosted by the FIS Development Team in the Office of Faculty Affairs. We are a small team of enthusiastic developers partnering with the VIVO open-source community and committed to the idea of linked data.</p>

    <p>If you are interested in technical software development related to the VIVO open-source project or an implementation of VIVO, please use the form below to connect with the CU Experts team.</p>

    <form name="contact_form" id="contact_form" class="customForm" action="${formAction!}" method="post" onSubmit="return ValidateForm('contact_form');" role="contact form">
        <input type="hidden" name="RequiredFields" value="webusername,webuseremail,s34gfd88p9x1" />
        <input type="hidden" name="RequiredFieldsNames" value="Name,Email address,Comments" />
        <input type="hidden" name="EmailFields" value="webuseremail" />
        <input type="hidden" name="EmailFieldsNames" value="emailaddress" />
        <input type="hidden" name="DeliveryType" value="contact" />
    
        <label for="webusername">Full name <span class="requiredHint"> *</span></label>
        <input type="text" name="webusername" value="${webusername!}"/>
        
        <label for="webuseremail">Email address <span class="requiredHint"> *</span></label>
        <input type="text" name="webuseremail"  value="${webuseremail!}"/>

        <label>Comments, questions, or suggestions <span class="requiredHint"> *</span></label>
        <textarea name="s34gfd88p9x1" rows="10" cols="90">${comments!}</textarea>
        
       
    	<p><label class="realpersonLabel">Please enter the letters displayed below into the security field:</label>

    		<input type="text" id="defaultReal" name="defaultReal"></p>
        
        <div class="buttons">
            <br /><input id="submit" type="submit" value="Send Mail" />
        </div>
        
        <p style="font-weight: bold; margin-top: 1em">Thank you!</p>
        
        <p class="requiredHint">* required fields</p>
    </form>    
</section>

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/templates/freemarker/edit/forms/css/customForm.css" />',
                  '<link rel="stylesheet" href="${urls.base}/css/jquery_plugins/jquery.realperson.css" />')}
${scripts.add('<script type="text/javascript" src="${urls.base}/js/commentForm.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/jquery_plugins/jquery.realperson.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/jquery-ui/js/jquery-ui-1.8.9.custom.min.js"></script>')}
<script type="text/javascript">
  $(function() {
    $('#defaultReal').realperson();
  });
</script>
