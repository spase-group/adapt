
function write_platform,platform,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(platform) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

platform_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),platform_xml,index,preview=preview

xml_element_write,platform.operating_system,spase_ontology(1),platform_xml,index,blank_check=blank_check,preview=preview

xml_element_write,platform.installer,spase_ontology(2),platform_xml,index,blank_check=blank_check,preview=preview

xml_element_write,platform.cores,spase_ontology(3),platform_xml,index,blank_check=blank_check,preview=preview

xml_element_write,platform.storage,spase_ontology(4),platform_xml,index,blank_check=blank_check,preview=preview

xml_element_write,platform.memory,spase_ontology(5),platform_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),platform_xml,index,preview=preview

xml_mirror,full_xml,platform_xml,full_index,preview=preview

return,platform_xml

end

