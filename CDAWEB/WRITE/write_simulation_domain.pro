
function write_simulation_domain,simulation_domain,spase_ontology,full_xml,full_index,blank_check=blank_check,preview=preview,full=full

if ((spase_model_blank_check(simulation_domain) eq '' and keyword_set(blank_check)) and spase_ontology(0).occur_required ne 1) then return,''

simulation_domain_xml=replicate('',99999L)

index=0

xml_tag_open,spase_ontology(0),simulation_domain_xml,index,preview=preview

temp_xml=xml_structure_write(simulation_domain.coordinate_system,simulation_domain_xml,index,spase_ontology(1:3),preview=preview,full=full)

xml_element_write,simulation_domain.description,spase_ontology(4),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.caveats,spase_ontology(5),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.spatial_dimension,spase_ontology(6),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.velocity_dimension,spase_ontology(7),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.field_dimension,spase_ontology(8),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.units,spase_ontology(9),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.units_conversion,spase_ontology(10),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.coordinates_label,spase_ontology(11),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.valid_min,spase_ontology(12),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.valid_max,spase_ontology(13),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.grid_structure,spase_ontology(14),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.grid_cell_size,spase_ontology(15),simulation_domain_xml,index,blank_check=blank_check,preview=preview

xml_element_write,simulation_domain.symmetry,spase_ontology(16),simulation_domain_xml,index,blank_check=blank_check,preview=preview

temp_xml=xml_structure_write(simulation_domain.boundary_conditions,simulation_domain_xml,index,spase_ontology(17:19),preview=preview,full=full)

xml_tag_close,spase_ontology(0),simulation_domain_xml,index,preview=preview

xml_mirror,full_xml,simulation_domain_xml,full_index,preview=preview

return,simulation_domain_xml

end

