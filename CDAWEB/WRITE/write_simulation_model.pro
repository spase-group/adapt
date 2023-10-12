
function write_simulation_model,simulation_model,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(simulation_model) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

simulation_model_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),simulation_model_xml,index,preview=preview

xml_element_write,simulation_model.resource_id,spase_ontology(1),simulation_model_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_model.resource_header,simulation_model_xml,index,spase_ontology(2:39),preview=preview,full=full)

temp_xml=xml_structure_write(simulation_model.access_information_optional,simulation_model_xml,index,spase_ontology(40:59),preview=preview,full=full)

temp_xml=xml_structure_write(simulation_model.versions,simulation_model_xml,index,spase_ontology(60:65),preview=preview,full=full)

xml_element_write,simulation_model.simulation_type,spase_ontology(66),simulation_model_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_model.code_language,spase_ontology(67),simulation_model_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_model.temporal_dependence,spase_ontology(68),simulation_model_xml,index,blank_check=blank_check,preview=preview

if keyword_set(keyword_spatial_description) then temp_xml=xml_structure_write(simulation_model.spatial_description,simulation_model_xml,index,spase_ontology(69:83),preview=preview,full=full)

xml_element_write,simulation_model.simulated_region,spase_ontology(84),simulation_model_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_model.input_properties,simulation_model_xml,index,spase_ontology(85:100),preview=preview,full=full)

temp_xml=xml_structure_write(simulation_model.output_parameters,simulation_model_xml,index,spase_ontology(101:248),preview=preview,full=full)

xml_element_write,simulation_model.model_url,spase_ontology(249),simulation_model_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),simulation_model_xml,index,preview=preview

xml_mirror,full_xml,simulation_model_xml,full_index,preview=preview

return,simulation_model_xml

end

