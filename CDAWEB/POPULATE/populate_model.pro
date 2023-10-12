
function populate_model,spase_ontology,station_info,verbose=verbose

model=spase_model_create(spase_ontology,'model',verbose=verbose)

model.model_id=''

model.version_tag=''

return,model

end

