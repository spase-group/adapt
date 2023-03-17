
function write_catalog,catalog,spase_ontology,full_xml,full_index,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(catalog) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

catalog_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),catalog_xml,index,preview=preview

xml_element_write,catalog.resource_id,spase_ontology(1),catalog_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(catalog.resource_header,catalog_xml,index,spase_ontology(2:37),preview=preview,full=full)

temp_xml=xml_structure_write(catalog.access_information,catalog_xml,index,spase_ontology(38:55),preview=preview,full=full)

xml_element_write,catalog.provider_name,spase_ontology(56),catalog_xml,index,blank_check=blank_check,preview=preview

xml_element_write,catalog.provider_resource_name,spase_ontology(57),catalog_xml,index,blank_check=blank_check,preview=preview

xml_element_write,catalog.provider_version,spase_ontology(58),catalog_xml,index,blank_check=blank_check,preview=preview

xml_element_write,catalog.instrument_id,spase_ontology(59),catalog_xml,index,blank_check=blank_check,preview=preview

xml_element_write,catalog.phenomenon_type,spase_ontology(60),catalog_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(catalog.time_span,catalog_xml,index,spase_ontology(61:65),keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,preview=preview,full=full)

xml_element_write,catalog.caveats,spase_ontology(66),catalog_xml,index,blank_check=blank_check,preview=preview

xml_element_write,catalog.keyword,spase_ontology(67),catalog_xml,index,blank_check=blank_check,preview=preview

xml_element_write,catalog.input_resource_id,spase_ontology(68),catalog_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(catalog.parameter,catalog_xml,index,spase_ontology(69:211),preview=preview,full=full)

xml_element_write,catalog.extension,spase_ontology(212),catalog_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),catalog_xml,index,preview=preview

xml_mirror,full_xml,catalog_xml,full_index,preview=preview

return,catalog_xml

end

