
function populate_publication_info,spase_ontology,station_info,verbose=verbose

publication_info=spase_model_create(spase_ontology,'publication_info',verbose=verbose)

publication_info.authors=''

publication_info.publication_date=''

publication_info.published_by=''

return,publication_info

end

