
function populate_wavelength_range,spase_ontology,station_info,verbose=verbose

wavelength_range=spase_model_create(spase_ontology,'wavelength_range',verbose=verbose)

spectral_range_list= $
   ['','CaK','ExtremeUltraviolet','FarUltraviolet','GammaRays','Halpha', $
    'HardXRays','He10830','He304','Infrared','K7699','LBHBand','Microwave', $
    'NaD','Ni6768','Optical','RadioFrequency','SoftXRays','Ultraviolet', $
    'WhiteLight','XRays']

wavelength_range.spectral_range=''

wavelength_range.low=''

wavelength_range.high=''

wavelength_range.units=''

for bin_loop=0,31 do begin

    wavelength_range.bin(bin_loop).band_name=''

    wavelength_range.bin(bin_loop).low=''

    wavelength_range.bin(bin_loop).high=''

endfor

return,wavelength_range

end

