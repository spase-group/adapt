
function write_spase,spase,spase_ontology,spase_version,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,blank_check=blank_check,preview=preview,full=full

spase_xml=replicate('',99999L)

spase_xml_tag_open,spase_version,spase_xml,preview=preview

index_mask=where(spase_xml ne '',index)

xml_element_write,spase.version,spase_ontology(1),spase_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(spase.catalog,spase_xml,index,spase_ontology(2:214),keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,preview=preview,full=full)

temp_xml=xml_structure_write(spase.display_data,spase_xml,index,spase_ontology(215:439),keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,preview=preview,full=full)

temp_xml=xml_structure_write(spase.numerical_data,spase_xml,index,spase_ontology(440:663),keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,preview=preview,full=full)

temp_xml=xml_structure_write(spase.document,spase_xml,index,spase_ontology(664:723),preview=preview,full=full)

temp_xml=xml_structure_write(spase.software,spase_xml,index,spase_ontology(724:785),preview=preview,full=full)

temp_xml=xml_structure_write(spase.granule,spase_xml,index,spase_ontology(786:804),preview=preview,full=full)

temp_xml=xml_structure_write(spase.instrument,spase_xml,index,spase_ontology(805:852),preview=preview,full=full)

temp_xml=xml_structure_write(spase.observatory,spase_xml,index,spase_ontology(853:902),preview=preview,full=full)

temp_xml=xml_structure_write(spase.person,spase_xml,index,spase_ontology(903:914),preview=preview,full=full)

temp_xml=xml_structure_write(spase.registry,spase_xml,index,spase_ontology(915:960),preview=preview,full=full)

temp_xml=xml_structure_write(spase.repository,spase_xml,index,spase_ontology(961:1006),preview=preview,full=full)

temp_xml=xml_structure_write(spase.service,spase_xml,index,spase_ontology(1007:1052),preview=preview,full=full)

temp_xml=xml_structure_write(spase.annotation,spase_xml,index,spase_ontology(1053:1106),keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,preview=preview,full=full)

xml_tag_close,spase_ontology(0),spase_xml,index,preview=preview

mask=indgen(index)

spase_xml=spase_xml(mask)

return,spase_xml

end

