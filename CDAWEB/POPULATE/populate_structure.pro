
function populate_structure,spase_ontology,station_info,verbose=verbose

structure=spase_model_create(spase_ontology,'structure',verbose=verbose)

qualifier_list= $
   ['','Incident','Anisotropy','Array','AutoSpectrum','Average', $
    'Characteristic','Circular','Coherence','Column','Component', $
    'Component.I','Component.J','Component.K','Confidence','Core', $
    'CrossSpectrum','Deviation','Differential','Direction','Directional', $
    'DirectionAngle','DirectionAngle.AzimuthAngle', $
    'DirectionAngle.ElevationAngle','DirectionAngle.PolarAngle', $
    'DirectionCosine','DirectionCosine.I','DirectionCosine.J', $
    'DirectionCosine.K','EncodedParameter','FieldAligned','Fit','Group', $
    'Halo','ImaginaryPart','Integral','Integral.Area','Integral.Bandwidth', $
    'Integral.SolidAngle','Linear','LineOfSight','Magnitude','Maximum', $
    'Median','Minimum','Moment','Parallel','Peak','Perpendicular', $
    'Perturbation','Phase','PhaseAngle','PowerSpectralDensity','Projection', $
    'Projection.IJ','Projection.IK','Projection.JK','Pseudo','Ratio', $
    'RealPart','Scalar','Spectral','StandardDeviation','StokesParameters', $
    'Strahl','Superhalo','Symmetric','Tensor','Total','Trace','Uncertainty', $
    'Variance','Vector']

structure.size=''

structure.description=''

structure.element.name=''

for qualifier_loop=0,4 do structure.element.qualifier(qualifier_loop)=''

structure.element.index=''

structure.element.parameter_key=''

structure.element.units=''

structure.element.units_conversion=''

structure.element.valid_min=''

structure.element.valid_max=''

structure.element.fill_value=''

structure.element.rendering_hints.display_type=''

structure.element.rendering_hints.axis_label=''

structure.element.rendering_hints.rendering_axis=''

structure.element.rendering_hints.index=''

structure.element.rendering_hints.value_format=''

structure.element.rendering_hints.scale_min=''

structure.element.rendering_hints.scale_max=''

structure.element.rendering_hints.scale_type=''

return,structure

end

