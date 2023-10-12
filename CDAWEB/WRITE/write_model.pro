
function write_model,model,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(model) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

model_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),model_xml,index,preview=preview

xml_element_write,model.model_id,spase_ontology(1),model_xml,index,blank_check=blank_check,preview=preview

xml_element_write,model.version_tag,spase_ontology(2),model_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),model_xml,index,preview=preview

xml_mirror,full_xml,model_xml,full_index,preview=preview

return,model_xml

end

