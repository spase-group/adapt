
function populate_numerical_data,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

numerical_data=spase_model_create(spase_ontology,'numerical_data',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

;
;-------------------------------------------------------------------------------
;
;  NUMERICAL_DATA List Num:                        36
;
;-------------------------------------------------------------------------------
;

access_rights_list=['','Open','PartiallyRestricted','Restricted']

association_type_list= $
   ['','ChildEventOf','DerivedFrom','ObservedBy','Other','PartOf','RevisionOf']

availability_list=['','Offline','Online']

coordinate_representation_list=['','Cartesian','Cylindrical','Spherical']

coordinate_system_name_list= $
   ['','Carrington','CGM','CSO','DM','ECD','ECEF','ENP','GEI','GEO','GPHIO', $
    'GSE','GSEQ','GSM','HAE','HCC','HCI','HCR','HEE','HEEQ','HERTN','HG', $
    'HGI','HGRTN','HPC','HPR','HSM','J2000','JSM','JSO','KSM','KSO','LGM', $
    'MAG','MFA','MSO','RTN','SC','SE','SM','SpacecraftOrbitPlane','SR','SR2', $
    'SSE','SSE_L','TIIS','VSO','WGS84']

display_type_list= $
   ['','Image','Plasmagram','Spectrogram','StackPlot','TimeSeries','WaveForm']

encoding_list= $
   ['','ASCII','Base64','BZIP2','GZIP','None','S3_BUCKET','TAR','Unicode','ZIP']

field_quantity_list= $
   ['','Current','Electric','Electromagnetic','Gyrofrequency','Magnetic', $
    'PlasmaFrequency','Potential','PoyntingFlux']

format_list= $
   ['','AVI','Binary','CDF','CEF','CEF1','CEF2','CSV','Excel','FITS','GIF', $
    'Hardcopy','Hardcopy.Film','Hardcopy.Microfiche','Hardcopy.Microfilm', $
    'Hardcopy.Photograph','Hardcopy.PhotographicPlate','Hardcopy.Print','HDF', $
    'HDF4','HDF5','HTML','IDFS','IDL','JPEG','JSON','MATLAB_4','MATLAB_6', $
    'MATLAB_7','MPEG','NCAR','NetCDF','PDF','PDS3','PDS4','PNG','Postscript', $
    'QuickTime','Text','Text.ASCII','Text.Unicode','TIFF','UDF','VOTable', $
    'XML']

measurement_type_list= $
   ['','ActivityIndex','Dopplergram','Dust','ElectricField', $
    'EnergeticParticles','Ephemeris','ImageIntensity','InstrumentStatus', $
    'IonComposition','Irradiance','MagneticField','Magnetogram', $
    'NeutralAtomImages','NeutralGas','Profile','Radiance','Spectrum','SPICE', $
    'ThermalPlasma','Waves','Waves.Active','Waves.Passive']

mixed_quantity_list= $
   ['','AkasofuEpsilon','AlfvenMachNumber','AlfvenVelocity', $
    'FrequencyToGyrofrequencyRatio','IMFClockAngle','MagnetosonicMachNumber', $
    'Other','PlasmaBeta','SolarUVFlux','TotalPressure','VCrossB']

observed_region_list= $
   ['','Asteroid','Comet','Earth','Earth.Magnetosheath','Earth.Magnetosphere', $
    'Earth.Magnetosphere.Magnetotail','Earth.Magnetosphere.Main', $
    'Earth.Magnetosphere.Plasmasphere','Earth.Magnetosphere.Polar', $
    'Earth.Magnetosphere.RadiationBelt','Earth.Magnetosphere.RingCurrent', $
    'Earth.Moon','Earth.NearSurface','Earth.NearSurface.Atmosphere', $
    'Earth.NearSurface.AuroralRegion','Earth.NearSurface.EquatorialRegion', $
    'Earth.NearSurface.Ionosphere','Earth.NearSurface.Ionosphere.DRegion', $
    'Earth.NearSurface.Ionosphere.ERegion', $
    'Earth.NearSurface.Ionosphere.FRegion', $
    'Earth.NearSurface.Ionosphere.Topside','Earth.NearSurface.Mesosphere', $
    'Earth.NearSurface.MidLatitudeRegion','Earth.NearSurface.Plasmasphere', $
    'Earth.NearSurface.PolarCap', $
    'Earth.NearSurface.SouthAtlanticAnomalyRegion', $
    'Earth.NearSurface.Stratosphere','Earth.NearSurface.SubAuroralRegion', $
    'Earth.NearSurface.Thermosphere','Earth.NearSurface.Troposphere', $
    'Earth.Surface','Heliosphere','Heliosphere.Heliosheath', $
    'Heliosphere.Inner','Heliosphere.NearEarth','Heliosphere.Outer', $
    'Heliosphere.Remote1AU','Interstellar','Jupiter','Jupiter.Callisto', $
    'Jupiter.Europa','Jupiter.Ganymede','Jupiter.Io','Jupiter.Magnetosphere', $
    'Jupiter.Magnetosphere.Magnetotail','Jupiter.Magnetosphere.Main', $
    'Jupiter.Magnetosphere.Plasmasphere','Jupiter.Magnetosphere.Polar', $
    'Jupiter.Magnetosphere.RadiationBelt','Jupiter.Magnetosphere.RingCurrent', $
    'Mars','Mars.Deimos','Mars.Magnetosphere', $
    'Mars.Magnetosphere.Magnetotail','Mars.Magnetosphere.Main', $
    'Mars.Magnetosphere.Plasmasphere','Mars.Magnetosphere.Polar', $
    'Mars.Magnetosphere.RadiationBelt','Mars.Magnetosphere.RingCurrent', $
    'Mars.Phobos','Mercury','Mercury.Magnetosphere', $
    'Mercury.Magnetosphere.Magnetotail','Mercury.Magnetosphere.Main', $
    'Mercury.Magnetosphere.Plasmasphere','Mercury.Magnetosphere.Polar', $
    'Mercury.Magnetosphere.RadiationBelt','Mercury.Magnetosphere.RingCurrent', $
    'Neptune','Neptune.Magnetosphere','Neptune.Magnetosphere.Magnetotail', $
    'Neptune.Magnetosphere.Main','Neptune.Magnetosphere.Plasmasphere', $
    'Neptune.Magnetosphere.Polar','Neptune.Magnetosphere.RadiationBelt', $
    'Neptune.Magnetosphere.RingCurrent','Neptune.Proteus','Neptune.Triton', $
    'Pluto','Saturn','Saturn.Dione','Saturn.Enceladus','Saturn.Iapetus', $
    'Saturn.Magnetosphere','Saturn.Magnetosphere.Magnetotail', $
    'Saturn.Magnetosphere.Main','Saturn.Magnetosphere.Plasmasphere', $
    'Saturn.Magnetosphere.Polar','Saturn.Magnetosphere.RadiationBelt', $
    'Saturn.Magnetosphere.RingCurrent','Saturn.Mimas','Saturn.Rhea', $
    'Saturn.Tethys','Saturn.Titan','Sun','Sun.Chromosphere','Sun.Corona', $
    'Sun.Interior','Sun.Photosphere','Sun.TransitionRegion','Uranus', $
    'Uranus.Ariel','Uranus.Magnetosphere','Uranus.Magnetosphere.Magnetotail', $
    'Uranus.Magnetosphere.Main','Uranus.Magnetosphere.Plasmasphere', $
    'Uranus.Magnetosphere.Polar','Uranus.Magnetosphere.RadiationBelt', $
    'Uranus.Magnetosphere.RingCurrent','Uranus.Miranda','Uranus.Oberon', $
    'Uranus.Puck','Uranus.Titania','Uranus.Umbriel','Venus', $
    'Venus.Magnetosphere','Venus.Magnetosphere.Magnetotail', $
    'Venus.Magnetosphere.Main','Venus.Magnetosphere.Plasmasphere', $
    'Venus.Magnetosphere.Polar','Venus.Magnetosphere.RadiationBelt', $
    'Venus.Magnetosphere.RingCurrent']

particle_quantity_list= $
   ['','AdiabaticInvariant','AdiabaticInvariant.BounceMotion', $
    'AdiabaticInvariant.DriftMotion','AdiabaticInvariant.MagneticMoment', $
    'ArrivalDirection','AtomicNumberDetected','AverageChargeState', $
    'ChargeFlux','ChargeState','CountRate','Counts','DynamicPressure', $
    'Energy','EnergyDensity','EnergyFlux','EnergyPerCharge','Entropy', $
    'FlowSpeed','FlowVelocity','Fluence','GeometricFactor','Gyrofrequency', $
    'HeatFlux','LShell','Mass','MassDensity','MassNumber','MassPerCharge', $
    'NumberDensity','NumberFlux','ParticleRadius','ParticleRigidity', $
    'PhaseSpaceDensity','PlasmaFrequency','Pressure','SonicMachNumber', $
    'SoundSpeed','Temperature','ThermalSpeed','Velocity']

particle_type_list= $
   ['','Aerosol','AlphaParticle','Atom','Dust','Electron','Ion','Molecule', $
    'Neutron','Positron','Proton']

processing_level_list=['','Calibrated','Raw','Uncalibrated']

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

role_list= $
   ['','ArchiveSpecialist','CoInvestigator','Contributor','CoPI', $
    'DataProducer','DeputyPI','Developer','FormerPI','GeneralContact', $
    'HostContact','InstrumentLead','MetadataContact','MissionManager', $
    'MissionPrincipalInvestigator','PrincipalInvestigator','ProgramManager', $
    'ProgramScientist','ProjectEngineer','ProjectManager','ProjectScientist', $
    'Publisher','Scientist','TeamLeader','TeamMember','TechnicalContact', $
    'User']

scale_type_list=['','LinearScale','LogScale']

spectral_range_list= $
   ['','CaK','ExtremeUltraviolet','FarUltraviolet','GammaRays','Halpha', $
    'HardXRays','He10830','He304','Infrared','K7699','LBHBand','Microwave', $
    'NaD','Ni6768','Optical','RadioFrequency','SoftXRays','Ultraviolet', $
    'WhiteLight','XRays']

style_list= $
   ['','File','HAPI','Listing','Overview','Search','Template','WebService']

support_quantity_list= $
   ['','DataQuality','Housekeeping','InstrumentMode','Orientation','Other', $
    'Positional','RotationMatrix','SpinPeriod','SpinPhase','SpinRate', $
    'Telemetry','Temporal','Velocity']

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

numerical_data.resource_id=''

numerical_data.resource_header.resource_name=''

numerical_data.resource_header.alternate_name=''

numerical_data.resource_header.doi=''

numerical_data.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    numerical_data.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    numerical_data.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

numerical_data.resource_header.expiration_date=''

numerical_data.resource_header.description=''

numerical_data.resource_header.acknowledgement=''

numerical_data.resource_header.publication_info.authors=''

numerical_data.resource_header.publication_info.publication_date=''

numerical_data.resource_header.publication_info.published_by=''

numerical_data.resource_header.funding.agency=''

numerical_data.resource_header.funding.project=''

numerical_data.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    numerical_data.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do numerical_data.resource_header.contact(contact_loop).role(role_loop)=''

    numerical_data.resource_header.contact(contact_loop).start_date=''

    numerical_data.resource_header.contact(contact_loop).stop_date=''

    numerical_data.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    numerical_data.resource_header.information_url(information_url_loop).name=''

    numerical_data.resource_header.information_url(information_url_loop).url=''

    numerical_data.resource_header.information_url(information_url_loop).description=''

    numerical_data.resource_header.information_url(information_url_loop).language=''

endfor

numerical_data.resource_header.association.association_id=''

numerical_data.resource_header.association.association_type=''

numerical_data.resource_header.association.note=''

for prior_id_loop=0,8 do numerical_data.resource_header.prior_id(prior_id_loop)=''

for access_information_loop=0,4 do begin

    numerical_data.access_information(access_information_loop).repository_id=''

    numerical_data.access_information(access_information_loop).availability=''

    numerical_data.access_information(access_information_loop).access_rights=''

    for access_url_loop=0,4 do begin

        numerical_data.access_information(access_information_loop).access_url(access_url_loop).name=''

        numerical_data.access_information(access_information_loop).access_url(access_url_loop).url=''

        numerical_data.access_information(access_information_loop).access_url(access_url_loop).style=''

        numerical_data.access_information(access_information_loop).access_url(access_url_loop).product_key=''

        numerical_data.access_information(access_information_loop).access_url(access_url_loop).description=''

        numerical_data.access_information(access_information_loop).access_url(access_url_loop).language=''

    endfor

    numerical_data.access_information(access_information_loop).format=''

    numerical_data.access_information(access_information_loop).encoding=''

    numerical_data.access_information(access_information_loop).data_extent.quantity=''

    numerical_data.access_information(access_information_loop).data_extent.units=''

    numerical_data.access_information(access_information_loop).data_extent.per=''

    numerical_data.access_information(access_information_loop).acknowledgement=''

endfor

numerical_data.processing_level=''

numerical_data.provider_name=''

numerical_data.provider_resource_name=''

numerical_data.provider_processing_level=''

numerical_data.provider_version=''

for instrument_id_loop=0,98 do numerical_data.instrument_id(instrument_id_loop)=''

for measurement_type_loop=0,4 do numerical_data.measurement_type(measurement_type_loop)=''

numerical_data.temporal_description.time_span.start_date=''

if keyword_set(keyword_stop_date) then numerical_data.temporal_description.time_span.stop_date=''

if keyword_set(keyword_relative_stop_date) then numerical_data.temporal_description.time_span.relative_stop_date=''

numerical_data.temporal_description.time_span.note=''

numerical_data.temporal_description.cadence=''

numerical_data.temporal_description.cadence_min=''

numerical_data.temporal_description.cadence_max=''

numerical_data.temporal_description.exposure=''

numerical_data.temporal_description.exposure_min=''

numerical_data.temporal_description.exposure_max=''

numerical_data.spectral_range=''

for observed_region_loop=0,14 do numerical_data.observed_region(observed_region_loop)=''

numerical_data.caveats=''

for keyword_loop=0,98 do numerical_data.keyword(keyword_loop)=''

numerical_data.input_resource_id=''

for parameter_loop=0,14 do begin

    numerical_data.parameter(parameter_loop).name=''

    numerical_data.parameter(parameter_loop).set=''

    numerical_data.parameter(parameter_loop).parameter_key=''

    numerical_data.parameter(parameter_loop).description=''

    numerical_data.parameter(parameter_loop).ucd=''

    numerical_data.parameter(parameter_loop).caveats=''

    numerical_data.parameter(parameter_loop).cadence=''

    numerical_data.parameter(parameter_loop).cadence_min=''

    numerical_data.parameter(parameter_loop).cadence_max=''

    numerical_data.parameter(parameter_loop).units=''

    numerical_data.parameter(parameter_loop).units_conversion=''

    numerical_data.parameter(parameter_loop).coordinate_system.coordinate_representation=''

    numerical_data.parameter(parameter_loop).coordinate_system.coordinate_system_name=''

    numerical_data.parameter(parameter_loop).rendering_hints.display_type=''

    numerical_data.parameter(parameter_loop).rendering_hints.axis_label=''

    numerical_data.parameter(parameter_loop).rendering_hints.rendering_axis=''

    numerical_data.parameter(parameter_loop).rendering_hints.index=''

    numerical_data.parameter(parameter_loop).rendering_hints.value_format=''

    numerical_data.parameter(parameter_loop).rendering_hints.scale_min=''

    numerical_data.parameter(parameter_loop).rendering_hints.scale_max=''

    numerical_data.parameter(parameter_loop).rendering_hints.scale_type=''

    numerical_data.parameter(parameter_loop).structure.size=''

    numerical_data.parameter(parameter_loop).structure.description=''

    for element_loop=0,3 do begin

        numerical_data.parameter(parameter_loop).structure.element(element_loop).name=''

        for qualifier_loop=0,4 do numerical_data.parameter(parameter_loop).structure.element(element_loop).qualifier(qualifier_loop)=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).index=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).parameter_key=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).units=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).units_conversion=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).valid_min=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).valid_max=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).fill_value=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.display_type=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.axis_label=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.rendering_axis=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.index=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.value_format=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_min=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_max=''

        numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_type=''

    endfor

    numerical_data.parameter(parameter_loop).valid_min=''

    numerical_data.parameter(parameter_loop).valid_max=''

    numerical_data.parameter(parameter_loop).fill_value=''

    for qualifier_loop=0,4 do numerical_data.parameter(parameter_loop).field.qualifier(qualifier_loop)=''

    numerical_data.parameter(parameter_loop).field.field_quantity=''

    numerical_data.parameter(parameter_loop).field.frequency_range.spectral_range=''

    numerical_data.parameter(parameter_loop).field.frequency_range.low=''

    numerical_data.parameter(parameter_loop).field.frequency_range.high=''

    numerical_data.parameter(parameter_loop).field.frequency_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).high=''

    endfor

    for particle_type_loop=0,4 do numerical_data.parameter(parameter_loop).particle.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do numerical_data.parameter(parameter_loop).particle.qualifier(qualifier_loop)=''

    numerical_data.parameter(parameter_loop).particle.particle_quantity=''

    for atomic_number_loop=0,4 do numerical_data.parameter(parameter_loop).particle.atomic_number(atomic_number_loop)=''

    numerical_data.parameter(parameter_loop).particle.energy_range.low=''

    numerical_data.parameter(parameter_loop).particle.energy_range.high=''

    numerical_data.parameter(parameter_loop).particle.energy_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.low=''

    numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.high=''

    numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).particle.polar_angle_range.low=''

    numerical_data.parameter(parameter_loop).particle.polar_angle_range.high=''

    numerical_data.parameter(parameter_loop).particle.polar_angle_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).particle.mass_range.low=''

    numerical_data.parameter(parameter_loop).particle.mass_range.high=''

    numerical_data.parameter(parameter_loop).particle.mass_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).particle.pitch_angle_range.low=''

    numerical_data.parameter(parameter_loop).particle.pitch_angle_range.high=''

    numerical_data.parameter(parameter_loop).particle.pitch_angle_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).wave.wave_type=''

    for qualifier_loop=0,4 do numerical_data.parameter(parameter_loop).wave.qualifier(qualifier_loop)=''

    numerical_data.parameter(parameter_loop).wave.wave_quantity=''

    numerical_data.parameter(parameter_loop).wave.energy_range.low=''

    numerical_data.parameter(parameter_loop).wave.energy_range.high=''

    numerical_data.parameter(parameter_loop).wave.energy_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).wave.frequency_range.spectral_range=''

    numerical_data.parameter(parameter_loop).wave.frequency_range.low=''

    numerical_data.parameter(parameter_loop).wave.frequency_range.high=''

    numerical_data.parameter(parameter_loop).wave.frequency_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).wave.wavelength_range.spectral_range=''

    numerical_data.parameter(parameter_loop).wave.wavelength_range.low=''

    numerical_data.parameter(parameter_loop).wave.wavelength_range.high=''

    numerical_data.parameter(parameter_loop).wave.wavelength_range.units=''

    for bin_loop=0,31 do begin

        numerical_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).band_name=''

        numerical_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).low=''

        numerical_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).high=''

    endfor

    numerical_data.parameter(parameter_loop).mixed.mixed_quantity=''

    for particle_type_loop=0,4 do numerical_data.parameter(parameter_loop).mixed.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do numerical_data.parameter(parameter_loop).mixed.qualifier(qualifier_loop)=''

    for qualifier_loop=0,4 do numerical_data.parameter(parameter_loop).support.qualifier(qualifier_loop)=''

    numerical_data.parameter(parameter_loop).support.support_quantity=''

endfor

numerical_data.extension=''

return,numerical_data

end
