
function populate_spatial_description,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

spatial_description=spase_model_create(spase_ontology,'spatial_description',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

spatial_description.dimension=''

spatial_description.coordinate_system.coordinate_representation=''

spatial_description.coordinate_system.coordinate_system_name=''

spatial_description.units=''

spatial_description.units_conversion=''

spatial_description.coordinates_label=''

if keyword_set(keyword_cuts_description) then spatial_description.cuts_description=''

if keyword_set(keyword_cubes_description) then spatial_description.cubes_description=''

if keyword_set(keyword_plane_normal_vector) then spatial_description.plane_normal_vector=''

if keyword_set(keyword_plane_point) then spatial_description.plane_point=''

if keyword_set(keyword_region_begin) then spatial_description.region_begin=''

if keyword_set(keyword_region_end) then spatial_description.region_end=''

spatial_description.step=''

return,spatial_description

end

