
function write_simulation_run,simulation_run,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(simulation_run) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

simulation_run_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),simulation_run_xml,index,preview=preview

xml_element_write,simulation_run.resource_id,spase_ontology(1),simulation_run_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_run.resource_header,simulation_run_xml,index,spase_ontology(2:39),preview=preview,full=full)

temp_xml=xml_structure_write(simulation_run.access_information,simulation_run_xml,index,spase_ontology(40:59),preview=preview,full=full)

xml_element_write,simulation_run.provider_resource_name,spase_ontology(60),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.provider_processing_level,spase_ontology(61),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.provider_version,spase_ontology(62),simulation_run_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_run.model,simulation_run_xml,index,spase_ontology(63:65),preview=preview,full=full)

xml_element_write,simulation_run.temporal_dependence,spase_ontology(66),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.simulated_region,spase_ontology(67),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.likelihood_rating,spase_ontology(68),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.caveats,spase_ontology(69),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.keyword,spase_ontology(70),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_run.input_resource_id,spase_ontology(71),simulation_run_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_run.simulation_time,simulation_run_xml,index,spase_ontology(72:82),preview=preview,full=full)

temp_xml=xml_structure_write(simulation_run.simulation_domain,simulation_run_xml,index,spase_ontology(83:102),preview=preview,full=full)

if keyword_set(keyword_region_parameter) then temp_xml=xml_structure_write(simulation_run.region_parameter,simulation_run_xml,index,spase_ontology(103:126),preview=preview,full=full)

if keyword_set(keyword_input_parameter) then temp_xml=xml_structure_write(simulation_run.input_parameter,simulation_run_xml,index,spase_ontology(127:149),preview=preview,full=full)

if keyword_set(keyword_input_population) then temp_xml=xml_structure_write(simulation_run.input_population,simulation_run_xml,index,spase_ontology(150:171),preview=preview,full=full)

if keyword_set(keyword_input_field) then temp_xml=xml_structure_write(simulation_run.input_field,simulation_run_xml,index,spase_ontology(172:192),preview=preview,full=full)

if keyword_set(keyword_input_process) then temp_xml=xml_structure_write(simulation_run.input_process,simulation_run_xml,index,spase_ontology(193:206),preview=preview,full=full)

xml_element_write,simulation_run.extension,spase_ontology(207),simulation_run_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),simulation_run_xml,index,preview=preview

xml_mirror,full_xml,simulation_run_xml,full_index,preview=preview

return,simulation_run_xml

end

