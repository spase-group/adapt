
function populate_mixed,spase_ontology,station_info,verbose=verbose

mixed=spase_model_create(spase_ontology,'mixed',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  MIXED List Num:                                  3
;
;-------------------------------------------------------------------------------
;

mixed_quantity_list= $
   ['','AkasofuEpsilon','AlfvenMachNumber','AlfvenVelocity', $
    'FrequencyToGyrofrequencyRatio','IMFClockAngle','MagnetosonicMachNumber', $
    'Other','PlasmaBeta','SolarUVFlux','TotalPressure','VCrossB']

particle_type_list= $
   ['','Aerosol','AlphaParticle','Atom','Dust','Electron','Ion','Molecule', $
    'Neutron','Positron','Proton']

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

mixed.mixed_quantity=''

for particle_type_loop=0,4 do mixed.particle_type(particle_type_loop)=''

for qualifier_loop=0,4 do mixed.qualifier(qualifier_loop)=''

return,mixed

end

