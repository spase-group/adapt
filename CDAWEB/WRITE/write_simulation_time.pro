
function write_simulation_time,simulation_time,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(simulation_time) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

simulation_time_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),simulation_time_xml,index,preview=preview

xml_element_write,simulation_time.description,spase_ontology(1),simulation_time_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_time.caveats,spase_ontology(2),simulation_time_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_time.duration,spase_ontology(3),simulation_time_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_time.time_start,spase_ontology(4),simulation_time_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_time.time_stop,spase_ontology(5),simulation_time_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_time.time_step,spase_ontology(6),simulation_time_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_time.diagnosis_time_step,simulation_time_xml,index,spase_ontology(7:10),preview=preview,full=full)

xml_tag_close,spase_ontology(0),simulation_time_xml,index,preview=preview

xml_mirror,full_xml,simulation_time_xml,full_index,preview=preview

return,simulation_time_xml

end

