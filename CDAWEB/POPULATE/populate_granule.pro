
function populate_granule,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

granule=spase_model_create(spase_ontology,'granule',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

granule.resource_id=''

granule.release_date=''

granule.expiration_date=''

granule.parent_id=''

for prior_id_loop=0,8 do granule.prior_id(prior_id_loop)=''

if keyword_set(keyword_start_date) then granule.start_date=''

if keyword_set(keyword_stop_date) then granule.stop_date=''

granule.spatial_coverage.coordinate_system.coordinate_representation=''

granule.spatial_coverage.coordinate_system.coordinate_system_name=''

granule.spatial_coverage.center_latitude=''

granule.spatial_coverage.northernmost_latitude=''

granule.spatial_coverage.southernmost_latitude=''

granule.spatial_coverage.center_longitude=''

granule.spatial_coverage.easternmost_longitude=''

granule.spatial_coverage.westernmost_longitude=''

granule.spatial_coverage.center_elevation=''

granule.spatial_coverage.minimum_elevation=''

granule.spatial_coverage.maximum_elevation=''

granule.spatial_coverage.acknowledgement=''

granule.spatial_coverage.description=''

granule.source.source_type=''

granule.source.url=''

granule.source.mirror_url=''

granule.source.checksum.hash_value=''

granule.source.checksum.hash_function=''

granule.source.data_extent.quantity=''

granule.source.data_extent.units=''

granule.source.data_extent.per=''

if keyword_set(keyword_region_begin) then granule.region_begin=''

if keyword_set(keyword_region_end) then granule.region_end=''

return,granule

end

