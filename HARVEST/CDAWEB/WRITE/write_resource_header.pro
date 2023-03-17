
function write_resource_header,resource_header,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(resource_header) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

resource_header_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),resource_header_xml,index,preview=preview

xml_element_write,resource_header.resource_name,spase_ontology(1),resource_header_xml,index,blank_check=blank_check,preview=preview

xml_element_write,resource_header.alternate_name,spase_ontology(2),resource_header_xml,index,blank_check=blank_check,preview=preview

xml_element_write,resource_header.doi,spase_ontology(3),resource_header_xml,index,blank_check=blank_check,preview=preview

xml_element_write,resource_header.release_date,spase_ontology(4),resource_header_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(resource_header.revision_history,resource_header_xml,index,spase_ontology(5:8),preview=preview,full=full)

xml_element_write,resource_header.expiration_date,spase_ontology(9),resource_header_xml,index,blank_check=blank_check,preview=preview

xml_element_write,resource_header.description,spase_ontology(10),resource_header_xml,index,blank_check=blank_check,preview=preview

xml_element_write,resource_header.acknowledgement,spase_ontology(11),resource_header_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(resource_header.publication_info,resource_header_xml,index,spase_ontology(12:15),preview=preview,full=full)

temp_xml=xml_structure_write(resource_header.funding,resource_header_xml,index,spase_ontology(16:19),preview=preview,full=full)

temp_xml=xml_structure_write(resource_header.contact,resource_header_xml,index,spase_ontology(20:25),preview=preview,full=full)

temp_xml=xml_structure_write(resource_header.information_url,resource_header_xml,index,spase_ontology(26:30),preview=preview,full=full)

temp_xml=xml_structure_write(resource_header.association,resource_header_xml,index,spase_ontology(31:34),preview=preview,full=full)

xml_element_write,resource_header.prior_id,spase_ontology(35),resource_header_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),resource_header_xml,index,preview=preview

xml_mirror,full_xml,resource_header_xml,full_index,preview=preview

return,resource_header_xml

end

