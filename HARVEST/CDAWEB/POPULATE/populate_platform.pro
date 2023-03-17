
function populate_platform,spase_ontology,station_info,verbose=verbose

platform=spase_model_create(spase_ontology,'platform',verbose=verbose)

platform.operating_system=''

platform.installer=''

platform.cores=''

platform.storage=''

platform.memory=''

return,platform

end

