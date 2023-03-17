
function populate_wave,spase_ontology,station_info,verbose=verbose

wave=spase_model_create(spase_ontology,'wave',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  WAVE List Num:                                   5
;
;-------------------------------------------------------------------------------
;

qualifier_list= $
   ['','Anisotropy','Array','AutoSpectrum','Average','Characteristic', $
    'Circular','Coherence','Column','Component','Component.I','Component.J', $
    'Component.K','Confidence','Core','CrossSpectrum','Deviation', $
    'Differential','Direction','DirectionAngle','DirectionAngle.AzimuthAngle', $
    'DirectionAngle.ElevationAngle','DirectionAngle.PolarAngle', $
    'DirectionCosine','DirectionCosine.I','DirectionCosine.J', $
    'DirectionCosine.K','Directional','EncodedParameter','FieldAligned','Fit', $
    'Group','Halo','ImaginaryPart','Integral','Integral.Area', $
    'Integral.Bandwidth','Integral.SolidAngle','LineOfSight','Linear', $
    'Magnitude','Maximum','Median','Minimum','Moment','Parallel','Peak', $
    'Perpendicular','Perturbation','Phase','PhaseAngle', $
    'PowerSpectralDensity','Projection','Projection.IJ','Projection.IK', $
    'Projection.JK','Pseudo','Ratio','RealPart','Scalar','Spectral', $
    'StandardDeviation','StokesParameters','Strahl','Superhalo','Symmetric', $
    'Tensor','Total','Trace','Uncertainty','Variance','Vector']

spectral_range_list= $
   ['','CaK','ExtremeUltraviolet','FarUltraviolet','GammaRays','Halpha', $
    'HardXRays','He10830','He304','Infrared','K7699','LBHBand','Microwave', $
    'NaD','Ni6768','Optical','RadioFrequency','SoftXRays','Ultraviolet', $
    'WhiteLight','XRays']

wave_quantity_list= $
   ['','Absorption','ACElectricField','ACMagneticField','Albedo', $
    'DopplerFrequency','Emissivity','EnergyFlux','EquivalentWidth', $
    'Frequency','Gyrofrequency','Intensity','LineDepth', $
    'LowerHybridFrequency','MagneticField','ModeAmplitude','PlasmaFrequency', $
    'Polarization','PoyntingFlux','PropagationTime','StokesParameters', $
    'UpperHybridFrequency','Velocity','VolumeEmissionRate','Wavelength']

wave_type_list= $
   ['','Electromagnetic','Electrostatic','Hydrodynamic','MHD','Photon', $
    'PlasmaWaves']

wave.wave_type=''

for qualifier_loop=0,4 do wave.qualifier(qualifier_loop)=''

wave.wave_quantity=''

wave.energy_range.low=''

wave.energy_range.high=''

wave.energy_range.units=''

for bin_loop=0,31 do begin

    wave.energy_range.bin(bin_loop).band_name=''

    wave.energy_range.bin(bin_loop).low=''

    wave.energy_range.bin(bin_loop).high=''

endfor

wave.frequency_range.spectral_range=''

wave.frequency_range.low=''

wave.frequency_range.high=''

wave.frequency_range.units=''

for bin_loop=0,31 do begin

    wave.frequency_range.bin(bin_loop).band_name=''

    wave.frequency_range.bin(bin_loop).low=''

    wave.frequency_range.bin(bin_loop).high=''

endfor

wave.wavelength_range.spectral_range=''

wave.wavelength_range.low=''

wave.wavelength_range.high=''

wave.wavelength_range.units=''

for bin_loop=0,31 do begin

    wave.wavelength_range.bin(bin_loop).band_name=''

    wave.wavelength_range.bin(bin_loop).low=''

    wave.wavelength_range.bin(bin_loop).high=''

endfor

return,wave

end

