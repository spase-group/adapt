
function populate_granule,spase_ontology,station_info,verbose=verbose

granule=spase_model_create(spase_ontology,'granule',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  GRANULE List Num:                                2
;
;-------------------------------------------------------------------------------
;

hash_function_list=['','MD5','SHA1','SHA256']

source_type_list=['','Ancillary','Browse','Data','Layout','Thumbnail']

granule.resource_id=''

granule.release_date=''

granule.expiration_date=''

granule.parent_id=''

for prior_id_loop=0,8 do granule.prior_id(prior_id_loop)=''

granule.start_date=''

granule.stop_date=''

granule.source.source_type=''

granule.source.url=''

granule.source.mirror_url=''

granule.source.checksum.hash_value=''

granule.source.checksum.hash_function=''

granule.source.data_extent.quantity=''

granule.source.data_extent.units=''

granule.source.data_extent.per=''

return,granule

end

