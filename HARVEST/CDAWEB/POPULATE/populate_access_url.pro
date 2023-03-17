
function populate_access_url,spase_ontology,station_info,verbose=verbose

access_url=spase_model_create(spase_ontology,'access_url',verbose=verbose)

style_list= $
   ['','File','HAPI','Listing','Overview','Search','Template','WebService']

access_url.name=''

access_url.url=''

access_url.style=''

access_url.product_key=''

access_url.description=''

access_url.language=''

return,access_url

end

