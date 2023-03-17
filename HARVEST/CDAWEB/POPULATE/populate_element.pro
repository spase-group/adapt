
function populate_element,spase_ontology,station_info,verbose=verbose

element=spase_model_create(spase_ontology,'element',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  ELEMENT List Num:                                4
;
;-------------------------------------------------------------------------------
;

display_type_list= $
   ['','Image','Plasmagram','Spectrogram','StackPlot','TimeSeries','WaveForm']

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

rendering_axis_list=['','ColorBar','Horizontal','Vertical']

scale_type_list=['','LinearScale','LogScale']

element.name=''

for qualifier_loop=0,4 do element.qualifier(qualifier_loop)=''

element.index=''

element.parameter_key=''

element.units=''

element.units_conversion=''

element.valid_min=''

element.valid_max=''

element.fill_value=''

element.rendering_hints.display_type=''

element.rendering_hints.axis_label=''

element.rendering_hints.rendering_axis=''

element.rendering_hints.index=''

element.rendering_hints.value_format=''

element.rendering_hints.scale_min=''

element.rendering_hints.scale_max=''

element.rendering_hints.scale_type=''

return,element

end

