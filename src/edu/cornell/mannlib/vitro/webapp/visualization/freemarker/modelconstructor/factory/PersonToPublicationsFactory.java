/* $This file is distributed under the terms of the license in /doc/license.txt$ */
package edu.cornell.mannlib.vitro.webapp.visualization.freemarker.modelconstructor.factory;

import com.hp.hpl.jena.query.Dataset;
import com.hp.hpl.jena.rdf.model.Model;

import edu.cornell.mannlib.vitro.webapp.visualization.exceptions.MalformedQueryParametersException;
import edu.cornell.mannlib.vitro.webapp.visualization.freemarker.modelconstructor.PersonToPublicationsModelConstructor;
import edu.cornell.mannlib.vitro.webapp.visualization.freemarker.valueobjects.ConstructedModelTracker;
import edu.cornell.mannlib.vitro.webapp.visualization.freemarker.visutils.ModelConstructor;

public class PersonToPublicationsFactory implements ModelFactoryInterface {

	@Override
	public Model getOrCreateModel(String uri, Dataset dataset)
			throws MalformedQueryParametersException {
		
		Model candidateModel = ConstructedModelTracker.getModel(
				ConstructedModelTracker
				.generateModelIdentifier(
						uri, 
						PersonToPublicationsModelConstructor.MODEL_TYPE));
		
		if (candidateModel != null) {
			
			return candidateModel;
			
		} else {
		
			ModelConstructor model = new PersonToPublicationsModelConstructor(uri, dataset);
			
			Model constructedModel = model.getConstructedModel();
			ConstructedModelTracker.trackModel(
					ConstructedModelTracker
						.generateModelIdentifier(
								uri, 
								PersonToPublicationsModelConstructor.MODEL_TYPE),
								constructedModel);
			
			return constructedModel;
		}
		
	}

}
