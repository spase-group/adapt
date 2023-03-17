
function populate_structure,spase_ontology,station_info,verbose=verbose

structure=spase_model_create(spase_ontology,'structure',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  STRUCTURE List Num:                              4
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

structure.size=''

structure.description=''

for element_loop=0,3 do begin

    structure.element(element_loop).name=''

    for qualifier_loop=0,4 do structure.element(element_loop).qualifier(qualifier_loop)=''

    structure.element(element_loop).index=''

    structure.element(element_loop).parameter_key=''

    structure.element(element_loop).units=''

    structure.element(element_loop).units_conversion=''

    structure.element(element_loop).valid_min=''

    structure.element(element_loop).valid_max=''

    structure.element(element_loop).fill_value=''

    structure.element(element_loop).rendering_hints.display_type=''

    structure.element(element_loop).rendering_hints.axis_label=''

    structure.element(element_loop).rendering_hints.rendering_axis=''

    structure.element(element_loop).rendering_hints.index=''

    structure.element(element_loop).rendering_hints.value_format=''

    structure.element(element_loop).rendering_hints.scale_min=''

    structure.element(element_loop).rendering_hints.scale_max=''

    structure.element(element_loop).rendering_hints.scale_type=''

endfor

return,structure

end

