
function populate_simulation_domain,spase_ontology,station_info,verbose=verbose

simulation_domain=spase_model_create(spase_ontology,'simulation_domain',verbose=verbose)

symmetry_list=['','Axial','Central','None','Plane']

simulation_domain.coordinate_system.coordinate_representation=''

simulation_domain.coordinate_system.coordinate_system_name=''

simulation_domain.description=''

simulation_domain.caveats=''

simulation_domain.spatial_dimension=''

simulation_domain.velocity_dimension=''

simulation_domain.field_dimension=''

simulation_domain.units=''

simulation_domain.units_conversion=''

simulation_domain.coordinates_label=''

simulation_domain.valid_min=''

simulation_domain.valid_max=''

simulation_domain.grid_structure=''

simulation_domain.grid_cell_size=''

simulation_domain.symmetry=''

simulation_domain.boundary_conditions.particle_boundary=''

simulation_domain.boundary_conditions.field_boundary=''

return,simulation_domain

end

