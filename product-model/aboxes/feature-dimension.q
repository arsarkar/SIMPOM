PREFIX  rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX  owl:  <http://www.w3.org/2002/07/owl#>
PREFIX  cco:  <http://www.ontologyrepository.com/CommonCoreOntologies/>
PREFIX  design: <http://www.ohio.edu/ontologies/design#>

SELECT  ?feature ?featureType ?dimension ?dimensionValue ?tolerance ?toleranceValue
WHERE
  { ?f   rdf:type              	design:FeatureSpecification .
    ?i1  rdf:type              	design:LabelBearingEntity .
    ?i3  rdf:type	design:TypeBearingEntity.
    ?d   rdf:type              	design:QualitySpecification .
    ?fd  rdf:type	design:FeatureQualityMap .
    ?i2  rdf:type	design:TypeBearingEntity .
	?i4  rdf:type	design:MeasurementBearingEntity.	
	?t   rdf:type   design:ToleranceSpecification .
    ?ft  rdf:type	design:FeatureQualityMap .
    ?i5  rdf:type	design:TypeBearingEntity .
	?i6  rdf:type	design:MeasurementBearingEntity.	
    ?f   cco:inheres_in        	?i1 .
    ?f   cco:inheres_in        	?i3. 
	?d   cco:inheres_in         ?i2 .
	?d   cco:inheres_in 			?i4.
	?t   cco:inheres_in         ?i5 .
	?t   cco:inheres_in 			?i6. 	  
    ?i1  cco:has_text_value  ?feature .
    ?i2  cco:has_URI_value ?dimension .
    ?i3  cco:has_URI_value	?featureType.
    ?i4  cco:has_text_value	?dimensionValue.
	?i5  cco:has_URI_value	?tolerance.
	?i6  cco:has_decimal_value	?toleranceValue.
    ?fd  design:describes_map_with  ?f ;
            design:describes_map_with  ?d.
	?ft  design:describes_map_with  ?f ;
            design:describes_map_with  ?t}