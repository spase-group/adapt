
function populate_checksum,spase_ontology,station_info,verbose=verbose

checksum=spase_model_create(spase_ontology,'checksum',verbose=verbose)

hash_function_list=['','MD5','SHA1','SHA256']

checksum.hash_value=''

checksum.hash_function=''

return,checksum

end

