
function populate_coordinate_system,spase_ontology,station_info,verbose=verbose

coordinate_system=spase_model_create(spase_ontology,'coordinate_system',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  COORDINATE_SYSTEM List Num:                      2
;
;-------------------------------------------------------------------------------
;

coordinate_representation_list=['','Cartesian','Cylindrical','Spherical']

coordinate_system_name_list= $
   ['','Carrington','CGM','CSO','DM','ECD','ECEF','ENP','GEI','GEO','GPHIO', $
    'GSE','GSEQ','GSM','HAE','HCC','HCI','HCR','HEE','HEEQ','HERTN','HG', $
    'HGI','HGRTN','HPC','HPR','HSM','J2000','JSM','JSO','KSM','KSO','LGM', $
    'MAG','MFA','MSO','RTN','SC','SE','SM','SpacecraftOrbitPlane','SR','SR2', $
    'SSE','SSE_L','TIIS','VSO','WGS84']

coordinate_system.coordinate_representation=''

coordinate_system.coordinate_system_name=''

return,coordinate_system

end

