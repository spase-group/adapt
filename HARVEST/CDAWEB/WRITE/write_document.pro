
function write_document,document,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(document) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

document_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),document_xml,index,preview=preview

xml_element_write,document.resource_id,spase_ontology(1),document_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(document.resource_header,document_xml,index,spase_ontology(2:37),preview=preview,full=full)

temp_xml=xml_structure_write(document.access_information,document_xml,index,spase_ontology(38:55),preview=preview,full=full)

xml_element_write,document.keyword,spase_ontology(56),document_xml,index,blank_check=blank_check,preview=preview

xml_element_write,document.document_type,spase_ontology(57),document_xml,index,blank_check=blank_check,preview=preview

xml_element_write,document.mime_type,spase_ontology(58),document_xml,index,blank_check=blank_check,preview=preview

xml_element_write,document.input_resource_id,spase_ontology(59),document_xml,index,blank_check=blank_check,preview=preview

xml_tag_close,spase_ontology(0),document_xml,index,preview=preview

xml_mirror,full_xml,document_xml,full_index,preview=preview

return,document_xml

end

