
function populate_support,spase_ontology,station_info,verbose=verbose

support=spase_model_create(spase_ontology,'support',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  SUPPORT List Num:                                2
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

support_quantity_list= $
   ['','DataQuality','Housekeeping','InstrumentMode','Orientation','Other', $
    'Positional','RotationMatrix','SpinPeriod','SpinPhase','SpinRate', $
    'Telemetry','Temporal','Velocity']

for qualifier_loop=0,4 do support.qualifier(qualifier_loop)=''

support.support_quantity=''

return,support

end

