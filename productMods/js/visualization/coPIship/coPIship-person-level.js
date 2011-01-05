/* $This file is distributed under the terms of the license in /doc/license.txt$ */
var collaboratorTableMetadata = {
	tableID: "coinvestigations_table",
	tableContainer: "coinve_table_container",
	tableCaption: "Co-investigators ",
	tableColumnTitle1: "Investigator",
	tableColumnTitle2: "Grants with <br />",
	tableCSVFileLink: egoCoInvestigatorsListDataFileURL,
	jsonNumberWorksProperty: "number_of_investigated_grants" 
};

var visType = "coprincipalinvestigator"; 
var visKeyForFlash = "CoPI";


function renderStatsOnNodeClicked(json){
	
	//console.log(json);
	var obj = jQuery.parseJSON(json);
	
	var works = "";
	var persons = "";
	var relation = "";
	var earliest_work = "";
	var latest_work = "";
	var number_of_works = "";
	
	works = "Grant(s)";
	persons = "Co-investigator(s)";
	relation = "coinvestigation";
	earliest_work = obj.earliest_grant;
	latest_work = obj.latest_grant;
	number_of_works = obj.number_of_investigated_grants;
	
	$("#dataPanel").attr("style","visibility:visible");
	$("#works").empty().append(number_of_works);

	/*
	 * Here obj.url points to the uri of that individual
	 */
	if(obj.url){
		
		if (obj.url == egoURI) {
			
			$("#investigatorName").addClass('investigator_name').removeClass('neutral_investigator_name');
			$('#num_works > .investigator_stats_text').text(works);
			$('#num_investigators > .investigator_stats_text').text(persons);
			
		} else {

			$("#investigatorName").addClass('neutral_investigator_name').removeClass('investigator_name');
			$('#num_works > .investigator_stats_text').text('Joint ' + works);
			$('#num_investigators > .investigator_stats_text').text('Joint ' + persons);
			
		}
		
		$("#profileUrl").attr("href", getWellFormedURLs(obj.url, "profile"));
		$("#coInvestigationVisUrl").attr("href", getWellFormedURLs(obj.url, relation));
		processProfileInformation("investigatorName", 
				"profileMoniker",
				"profileImage",
				jQuery.parseJSON(getWellFormedURLs(obj.url, "profile_info")),
				true,
				true);
		
		

	} else{
		$("#profileUrl").attr("href","#");
		$("#coInvestigationVisUrl").attr("href","#");
	}

	$("#coInvestigators").empty().append(obj.noOfCorelations);	
	
	$("#firstGrant").empty().append(earliest_work);
	(earliest_work)?$("#fGrant").attr("style","visibility:visible"):$("#fGrant").attr("style","visibility:hidden");
	$("#lastGrant").empty().append(latest_work);
	(latest_work)?$("#lGrant").attr("style","visibility:visible"):$("#lGrant").attr("style","visibility:hidden");

}