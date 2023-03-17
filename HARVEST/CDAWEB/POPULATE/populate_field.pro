
function populate_field,spase_ontology,station_info,verbose=verbose

field=spase_model_create(spase_ontology,'field',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  FIELD List Num:                                  3
;
;-------------------------------------------------------------------------------
;

field_quantity_list= $
   ['','Current','Electric','Electromagnetic','Gyrofrequency','Magnetic', $
    'PlasmaFrequency','Potential','PoyntingFlux']

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

for qualifier_loop=0,4 do field.qualifier(qualifier_loop)=''

field.field_quantity=''

field.frequency_range.spectral_range=''

field.frequency_range.low=''

field.frequency_range.high=''

field.frequency_range.units=''

for bin_loop=0,31 do begin

    field.frequency_range.bin(bin_loop).band_name=''

    field.frequency_range.bin(bin_loop).low=''

    field.frequency_range.bin(bin_loop).high=''

endfor

return,field

end

