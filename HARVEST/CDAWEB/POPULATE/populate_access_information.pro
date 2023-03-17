
function populate_access_information,spase_ontology,station_info,verbose=verbose

access_information=spase_model_create(spase_ontology,'access_information',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  ACCESS_INFORMATION List Num:                     5
;
;-------------------------------------------------------------------------------
;

access_rights_list=['','Open','PartiallyRestricted','Restricted']

availability_list=['','Offline','Online']

encoding_list= $
   ['','ASCII','Base64','BZIP2','GZIP','None','S3_BUCKET','TAR','Unicode','ZIP']

format_list= $
   ['','AVI','Binary','CDF','CEF','CEF1','CEF2','CSV','Excel','FITS','GIF', $
    'Hardcopy','Hardcopy.Film','Hardcopy.Microfiche','Hardcopy.Microfilm', $
    'Hardcopy.Photograph','Hardcopy.PhotographicPlate','Hardcopy.Print','HDF', $
    'HDF4','HDF5','HTML','IDFS','IDL','JPEG','JSON','MATLAB_4','MATLAB_6', $
    'MATLAB_7','MPEG','NCAR','NetCDF','PDF','PDS3','PDS4','PNG','Postscript', $
    'QuickTime','Text','Text.ASCII','Text.Unicode','TIFF','UDF','VOTable', $
    'XML']

style_list= $
   ['','File','HAPI','Listing','Overview','Search','Template','WebService']

access_information.repository_id=''

access_information.availability=''

access_information.access_rights=''

for access_url_loop=0,4 do begin

    access_information.access_url(access_url_loop).name=''

    access_information.access_url(access_url_loop).url=''

    access_information.access_url(access_url_loop).style=''

    access_information.access_url(access_url_loop).product_key=''

    access_information.access_url(access_url_loop).description=''

    access_information.access_url(access_url_loop).language=''

endfor

access_information.format=''

access_information.encoding=''

access_information.data_extent.quantity=''

access_information.data_extent.units=''

access_information.data_extent.per=''

access_information.acknowledgement=''

return,access_information

end

