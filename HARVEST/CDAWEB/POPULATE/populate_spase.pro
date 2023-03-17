
function populate_spase,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

spase=spase_model_create(spase_ontology,'spase',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

;
;-------------------------------------------------------------------------------
;
;  SPASE List Num:                                141
;
;-------------------------------------------------------------------------------
;

access_rights_list=['','Open','PartiallyRestricted','Restricted']

annotation_type_list=['','Anomaly','Event','Feature']

application_interface_list=['','API','CLI','GUI']

association_type_list= $
   ['','ChildEventOf','DerivedFrom','ObservedBy','Other','PartOf','RevisionOf']

availability_list=['','Offline','Online']

classification_method_list=['','Automatic','Inferred','Inspection']

confidence_rating_list=['','Probable','Strong','Unlikely','Weak']

coordinate_representation_list=['','Cartesian','Cylindrical','Spherical']

coordinate_system_name_list= $
   ['','Carrington','CGM','CSO','DM','ECD','ECEF','ENP','GEI','GEO','GPHIO', $
    'GSE','GSEQ','GSM','HAE','HCC','HCI','HCR','HEE','HEEQ','HERTN','HG', $
    'HGI','HGRTN','HPC','HPR','HSM','J2000','JSM','JSO','KSM','KSO','LGM', $
    'MAG','MFA','MSO','RTN','SC','SE','SM','SpacecraftOrbitPlane','SR','SR2', $
    'SSE','SSE_L','TIIS','VSO','WGS84']

display_type_list= $
   ['','Image','Plasmagram','Spectrogram','StackPlot','TimeSeries','WaveForm']

document_type_list= $
   ['','Other','Poster','Presentation','Report','Specification', $
    'TechnicalNote','WhitePaper']

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

hash_function_list=['','MD5','SHA1','SHA256']

instrument_type_list= $
   ['','Antenna','Channeltron','Coronograph','DoubleSphere','DustDetector', $
    'ElectronDriftInstrument','ElectrostaticAnalyser', $
    'EnergeticParticleInstrument','Experiment','FaradayCup','FluxFeedback', $
    'FourierTransformSpectrograph','GeigerMuellerTube','Imager', $
    'ImagingSpectrometer','Interferometer','IonChamber','IonDrift','IonGauge', $
    'LangmuirProbe','LongWire','Magnetograph','Magnetometer', $
    'MassSpectrometer','MicrochannelPlate','MultispectralImager', $
    'NeutralAtomImager','NeutralParticleDetector','ParticleCorrelator', $
    'ParticleDetector','Photometer','PhotomultiplierTube','Photopolarimeter', $
    'Platform','ProportionalCounter','QuadrisphericalAnalyser','Radar', $
    'Radiometer','ResonanceSounder','RetardingPotentialAnalyser','Riometer', $
    'ScintillationDetector','SearchCoil','SolidStateDetector','Sounder', $
    'SpacecraftPotentialControl','SpectralPowerReceiver','Spectrometer', $
    'TimeOfFlight','Unspecified','WaveformReceiver']

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

observatory_region_list= $
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

phenomenon_type_list= $
   ['','ActiveRegion','Aurora','BowShockCrossing','CoronalHole', $
    'CoronalMassEjection','EITWave','EnergeticSolarParticleEvent', $
    'ForbushDecrease','GeomagneticStorm','InterplanetaryShock', $
    'MagneticCloud','MagnetopauseCrossing','RadioBurst', $
    'SectorBoundaryCrossing','SolarFlare','SolarWindExtreme', $
    'StreamInteractionRegion','Substorm']

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

source_type_list=['','Ancillary','Browse','Data','Layout','Thumbnail']

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

spase.version=''

spase.catalog.resource_id=''

spase.catalog.resource_header.resource_name=''

spase.catalog.resource_header.alternate_name=''

spase.catalog.resource_header.doi=''

spase.catalog.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.catalog.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.catalog.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.catalog.resource_header.expiration_date=''

spase.catalog.resource_header.description=''

spase.catalog.resource_header.acknowledgement=''

spase.catalog.resource_header.publication_info.authors=''

spase.catalog.resource_header.publication_info.publication_date=''

spase.catalog.resource_header.publication_info.published_by=''

spase.catalog.resource_header.funding.agency=''

spase.catalog.resource_header.funding.project=''

spase.catalog.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.catalog.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.catalog.resource_header.contact(contact_loop).role(role_loop)=''

    spase.catalog.resource_header.contact(contact_loop).start_date=''

    spase.catalog.resource_header.contact(contact_loop).stop_date=''

    spase.catalog.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.catalog.resource_header.information_url(information_url_loop).name=''

    spase.catalog.resource_header.information_url(information_url_loop).url=''

    spase.catalog.resource_header.information_url(information_url_loop).description=''

    spase.catalog.resource_header.information_url(information_url_loop).language=''

endfor

spase.catalog.resource_header.association.association_id=''

spase.catalog.resource_header.association.association_type=''

spase.catalog.resource_header.association.note=''

for prior_id_loop=0,8 do spase.catalog.resource_header.prior_id(prior_id_loop)=''

for access_information_loop=0,4 do begin

    spase.catalog.access_information(access_information_loop).repository_id=''

    spase.catalog.access_information(access_information_loop).availability=''

    spase.catalog.access_information(access_information_loop).access_rights=''

    for access_url_loop=0,4 do begin

        spase.catalog.access_information(access_information_loop).access_url(access_url_loop).name=''

        spase.catalog.access_information(access_information_loop).access_url(access_url_loop).url=''

        spase.catalog.access_information(access_information_loop).access_url(access_url_loop).style=''

        spase.catalog.access_information(access_information_loop).access_url(access_url_loop).product_key=''

        spase.catalog.access_information(access_information_loop).access_url(access_url_loop).description=''

        spase.catalog.access_information(access_information_loop).access_url(access_url_loop).language=''

    endfor

    spase.catalog.access_information(access_information_loop).format=''

    spase.catalog.access_information(access_information_loop).encoding=''

    spase.catalog.access_information(access_information_loop).data_extent.quantity=''

    spase.catalog.access_information(access_information_loop).data_extent.units=''

    spase.catalog.access_information(access_information_loop).data_extent.per=''

    spase.catalog.access_information(access_information_loop).acknowledgement=''

endfor

spase.catalog.provider_name=''

spase.catalog.provider_resource_name=''

spase.catalog.provider_version=''

for instrument_id_loop=0,98 do spase.catalog.instrument_id(instrument_id_loop)=''

for phenomenon_type_loop=0,4 do spase.catalog.phenomenon_type(phenomenon_type_loop)=''

spase.catalog.time_span.start_date=''

if keyword_set(keyword_stop_date) then spase.catalog.time_span.stop_date=''

if keyword_set(keyword_relative_stop_date) then spase.catalog.time_span.relative_stop_date=''

spase.catalog.time_span.note=''

spase.catalog.caveats=''

for keyword_loop=0,98 do spase.catalog.keyword(keyword_loop)=''

spase.catalog.input_resource_id=''

for parameter_loop=0,14 do begin

    spase.catalog.parameter(parameter_loop).name=''

    spase.catalog.parameter(parameter_loop).set=''

    spase.catalog.parameter(parameter_loop).parameter_key=''

    spase.catalog.parameter(parameter_loop).description=''

    spase.catalog.parameter(parameter_loop).ucd=''

    spase.catalog.parameter(parameter_loop).caveats=''

    spase.catalog.parameter(parameter_loop).cadence=''

    spase.catalog.parameter(parameter_loop).cadence_min=''

    spase.catalog.parameter(parameter_loop).cadence_max=''

    spase.catalog.parameter(parameter_loop).units=''

    spase.catalog.parameter(parameter_loop).units_conversion=''

    spase.catalog.parameter(parameter_loop).coordinate_system.coordinate_representation=''

    spase.catalog.parameter(parameter_loop).coordinate_system.coordinate_system_name=''

    spase.catalog.parameter(parameter_loop).rendering_hints.display_type=''

    spase.catalog.parameter(parameter_loop).rendering_hints.axis_label=''

    spase.catalog.parameter(parameter_loop).rendering_hints.rendering_axis=''

    spase.catalog.parameter(parameter_loop).rendering_hints.index=''

    spase.catalog.parameter(parameter_loop).rendering_hints.value_format=''

    spase.catalog.parameter(parameter_loop).rendering_hints.scale_min=''

    spase.catalog.parameter(parameter_loop).rendering_hints.scale_max=''

    spase.catalog.parameter(parameter_loop).rendering_hints.scale_type=''

    spase.catalog.parameter(parameter_loop).structure.size=''

    spase.catalog.parameter(parameter_loop).structure.description=''

    for element_loop=0,3 do begin

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).name=''

        for qualifier_loop=0,4 do spase.catalog.parameter(parameter_loop).structure.element(element_loop).qualifier(qualifier_loop)=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).index=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).parameter_key=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).units=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).units_conversion=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).valid_min=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).valid_max=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).fill_value=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.display_type=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.axis_label=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.rendering_axis=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.index=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.value_format=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_min=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_max=''

        spase.catalog.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_type=''

    endfor

    spase.catalog.parameter(parameter_loop).valid_min=''

    spase.catalog.parameter(parameter_loop).valid_max=''

    spase.catalog.parameter(parameter_loop).fill_value=''

    for qualifier_loop=0,4 do spase.catalog.parameter(parameter_loop).field.qualifier(qualifier_loop)=''

    spase.catalog.parameter(parameter_loop).field.field_quantity=''

    spase.catalog.parameter(parameter_loop).field.frequency_range.spectral_range=''

    spase.catalog.parameter(parameter_loop).field.frequency_range.low=''

    spase.catalog.parameter(parameter_loop).field.frequency_range.high=''

    spase.catalog.parameter(parameter_loop).field.frequency_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).field.frequency_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).field.frequency_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).field.frequency_range.bin(bin_loop).high=''

    endfor

    for particle_type_loop=0,4 do spase.catalog.parameter(parameter_loop).particle.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do spase.catalog.parameter(parameter_loop).particle.qualifier(qualifier_loop)=''

    spase.catalog.parameter(parameter_loop).particle.particle_quantity=''

    for atomic_number_loop=0,4 do spase.catalog.parameter(parameter_loop).particle.atomic_number(atomic_number_loop)=''

    spase.catalog.parameter(parameter_loop).particle.energy_range.low=''

    spase.catalog.parameter(parameter_loop).particle.energy_range.high=''

    spase.catalog.parameter(parameter_loop).particle.energy_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).particle.energy_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).particle.energy_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).particle.energy_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).particle.azimuthal_angle_range.low=''

    spase.catalog.parameter(parameter_loop).particle.azimuthal_angle_range.high=''

    spase.catalog.parameter(parameter_loop).particle.azimuthal_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).particle.polar_angle_range.low=''

    spase.catalog.parameter(parameter_loop).particle.polar_angle_range.high=''

    spase.catalog.parameter(parameter_loop).particle.polar_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).particle.mass_range.low=''

    spase.catalog.parameter(parameter_loop).particle.mass_range.high=''

    spase.catalog.parameter(parameter_loop).particle.mass_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).particle.mass_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).particle.mass_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).particle.mass_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).particle.pitch_angle_range.low=''

    spase.catalog.parameter(parameter_loop).particle.pitch_angle_range.high=''

    spase.catalog.parameter(parameter_loop).particle.pitch_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).wave.wave_type=''

    for qualifier_loop=0,4 do spase.catalog.parameter(parameter_loop).wave.qualifier(qualifier_loop)=''

    spase.catalog.parameter(parameter_loop).wave.wave_quantity=''

    spase.catalog.parameter(parameter_loop).wave.energy_range.low=''

    spase.catalog.parameter(parameter_loop).wave.energy_range.high=''

    spase.catalog.parameter(parameter_loop).wave.energy_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).wave.energy_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).wave.energy_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).wave.energy_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).wave.frequency_range.spectral_range=''

    spase.catalog.parameter(parameter_loop).wave.frequency_range.low=''

    spase.catalog.parameter(parameter_loop).wave.frequency_range.high=''

    spase.catalog.parameter(parameter_loop).wave.frequency_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).wave.wavelength_range.spectral_range=''

    spase.catalog.parameter(parameter_loop).wave.wavelength_range.low=''

    spase.catalog.parameter(parameter_loop).wave.wavelength_range.high=''

    spase.catalog.parameter(parameter_loop).wave.wavelength_range.units=''

    for bin_loop=0,31 do begin

        spase.catalog.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).band_name=''

        spase.catalog.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).low=''

        spase.catalog.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).high=''

    endfor

    spase.catalog.parameter(parameter_loop).mixed.mixed_quantity=''

    for particle_type_loop=0,4 do spase.catalog.parameter(parameter_loop).mixed.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do spase.catalog.parameter(parameter_loop).mixed.qualifier(qualifier_loop)=''

    for qualifier_loop=0,4 do spase.catalog.parameter(parameter_loop).support.qualifier(qualifier_loop)=''

    spase.catalog.parameter(parameter_loop).support.support_quantity=''

endfor

spase.catalog.extension=''

spase.display_data.resource_id=''

spase.display_data.resource_header.resource_name=''

spase.display_data.resource_header.alternate_name=''

spase.display_data.resource_header.doi=''

spase.display_data.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.display_data.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.display_data.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.display_data.resource_header.expiration_date=''

spase.display_data.resource_header.description=''

spase.display_data.resource_header.acknowledgement=''

spase.display_data.resource_header.publication_info.authors=''

spase.display_data.resource_header.publication_info.publication_date=''

spase.display_data.resource_header.publication_info.published_by=''

spase.display_data.resource_header.funding.agency=''

spase.display_data.resource_header.funding.project=''

spase.display_data.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.display_data.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.display_data.resource_header.contact(contact_loop).role(role_loop)=''

    spase.display_data.resource_header.contact(contact_loop).start_date=''

    spase.display_data.resource_header.contact(contact_loop).stop_date=''

    spase.display_data.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.display_data.resource_header.information_url(information_url_loop).name=''

    spase.display_data.resource_header.information_url(information_url_loop).url=''

    spase.display_data.resource_header.information_url(information_url_loop).description=''

    spase.display_data.resource_header.information_url(information_url_loop).language=''

endfor

spase.display_data.resource_header.association.association_id=''

spase.display_data.resource_header.association.association_type=''

spase.display_data.resource_header.association.note=''

for prior_id_loop=0,8 do spase.display_data.resource_header.prior_id(prior_id_loop)=''

for access_information_loop=0,4 do begin

    spase.display_data.access_information(access_information_loop).repository_id=''

    spase.display_data.access_information(access_information_loop).availability=''

    spase.display_data.access_information(access_information_loop).access_rights=''

    for access_url_loop=0,4 do begin

        spase.display_data.access_information(access_information_loop).access_url(access_url_loop).name=''

        spase.display_data.access_information(access_information_loop).access_url(access_url_loop).url=''

        spase.display_data.access_information(access_information_loop).access_url(access_url_loop).style=''

        spase.display_data.access_information(access_information_loop).access_url(access_url_loop).product_key=''

        spase.display_data.access_information(access_information_loop).access_url(access_url_loop).description=''

        spase.display_data.access_information(access_information_loop).access_url(access_url_loop).language=''

    endfor

    spase.display_data.access_information(access_information_loop).format=''

    spase.display_data.access_information(access_information_loop).encoding=''

    spase.display_data.access_information(access_information_loop).data_extent.quantity=''

    spase.display_data.access_information(access_information_loop).data_extent.units=''

    spase.display_data.access_information(access_information_loop).data_extent.per=''

    spase.display_data.access_information(access_information_loop).acknowledgement=''

endfor

spase.display_data.processing_level=''

spase.display_data.provider_name=''

spase.display_data.provider_resource_name=''

spase.display_data.provider_processing_level=''

spase.display_data.provider_version=''

for instrument_id_loop=0,98 do spase.display_data.instrument_id(instrument_id_loop)=''

for measurement_type_loop=0,4 do spase.display_data.measurement_type(measurement_type_loop)=''

spase.display_data.temporal_description.time_span.start_date=''

if keyword_set(keyword_stop_date) then spase.display_data.temporal_description.time_span.stop_date=''

if keyword_set(keyword_relative_stop_date) then spase.display_data.temporal_description.time_span.relative_stop_date=''

spase.display_data.temporal_description.time_span.note=''

spase.display_data.temporal_description.cadence=''

spase.display_data.temporal_description.cadence_min=''

spase.display_data.temporal_description.cadence_max=''

spase.display_data.temporal_description.exposure=''

spase.display_data.temporal_description.exposure_min=''

spase.display_data.temporal_description.exposure_max=''

spase.display_data.spectral_range=''

spase.display_data.display_cadence=''

for observed_region_loop=0,14 do spase.display_data.observed_region(observed_region_loop)=''

spase.display_data.caveats=''

for keyword_loop=0,98 do spase.display_data.keyword(keyword_loop)=''

spase.display_data.input_resource_id=''

for parameter_loop=0,14 do begin

    spase.display_data.parameter(parameter_loop).name=''

    spase.display_data.parameter(parameter_loop).set=''

    spase.display_data.parameter(parameter_loop).parameter_key=''

    spase.display_data.parameter(parameter_loop).description=''

    spase.display_data.parameter(parameter_loop).ucd=''

    spase.display_data.parameter(parameter_loop).caveats=''

    spase.display_data.parameter(parameter_loop).cadence=''

    spase.display_data.parameter(parameter_loop).cadence_min=''

    spase.display_data.parameter(parameter_loop).cadence_max=''

    spase.display_data.parameter(parameter_loop).units=''

    spase.display_data.parameter(parameter_loop).units_conversion=''

    spase.display_data.parameter(parameter_loop).coordinate_system.coordinate_representation=''

    spase.display_data.parameter(parameter_loop).coordinate_system.coordinate_system_name=''

    spase.display_data.parameter(parameter_loop).rendering_hints.display_type=''

    spase.display_data.parameter(parameter_loop).rendering_hints.axis_label=''

    spase.display_data.parameter(parameter_loop).rendering_hints.rendering_axis=''

    spase.display_data.parameter(parameter_loop).rendering_hints.index=''

    spase.display_data.parameter(parameter_loop).rendering_hints.value_format=''

    spase.display_data.parameter(parameter_loop).rendering_hints.scale_min=''

    spase.display_data.parameter(parameter_loop).rendering_hints.scale_max=''

    spase.display_data.parameter(parameter_loop).rendering_hints.scale_type=''

    spase.display_data.parameter(parameter_loop).structure.size=''

    spase.display_data.parameter(parameter_loop).structure.description=''

    for element_loop=0,3 do begin

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).name=''

        for qualifier_loop=0,4 do spase.display_data.parameter(parameter_loop).structure.element(element_loop).qualifier(qualifier_loop)=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).index=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).parameter_key=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).units=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).units_conversion=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).valid_min=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).valid_max=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).fill_value=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.display_type=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.axis_label=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.rendering_axis=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.index=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.value_format=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_min=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_max=''

        spase.display_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_type=''

    endfor

    spase.display_data.parameter(parameter_loop).valid_min=''

    spase.display_data.parameter(parameter_loop).valid_max=''

    spase.display_data.parameter(parameter_loop).fill_value=''

    for qualifier_loop=0,4 do spase.display_data.parameter(parameter_loop).field.qualifier(qualifier_loop)=''

    spase.display_data.parameter(parameter_loop).field.field_quantity=''

    spase.display_data.parameter(parameter_loop).field.frequency_range.spectral_range=''

    spase.display_data.parameter(parameter_loop).field.frequency_range.low=''

    spase.display_data.parameter(parameter_loop).field.frequency_range.high=''

    spase.display_data.parameter(parameter_loop).field.frequency_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).high=''

    endfor

    for particle_type_loop=0,4 do spase.display_data.parameter(parameter_loop).particle.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do spase.display_data.parameter(parameter_loop).particle.qualifier(qualifier_loop)=''

    spase.display_data.parameter(parameter_loop).particle.particle_quantity=''

    for atomic_number_loop=0,4 do spase.display_data.parameter(parameter_loop).particle.atomic_number(atomic_number_loop)=''

    spase.display_data.parameter(parameter_loop).particle.energy_range.low=''

    spase.display_data.parameter(parameter_loop).particle.energy_range.high=''

    spase.display_data.parameter(parameter_loop).particle.energy_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).particle.azimuthal_angle_range.low=''

    spase.display_data.parameter(parameter_loop).particle.azimuthal_angle_range.high=''

    spase.display_data.parameter(parameter_loop).particle.azimuthal_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).particle.polar_angle_range.low=''

    spase.display_data.parameter(parameter_loop).particle.polar_angle_range.high=''

    spase.display_data.parameter(parameter_loop).particle.polar_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).particle.mass_range.low=''

    spase.display_data.parameter(parameter_loop).particle.mass_range.high=''

    spase.display_data.parameter(parameter_loop).particle.mass_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).particle.pitch_angle_range.low=''

    spase.display_data.parameter(parameter_loop).particle.pitch_angle_range.high=''

    spase.display_data.parameter(parameter_loop).particle.pitch_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).wave.wave_type=''

    for qualifier_loop=0,4 do spase.display_data.parameter(parameter_loop).wave.qualifier(qualifier_loop)=''

    spase.display_data.parameter(parameter_loop).wave.wave_quantity=''

    spase.display_data.parameter(parameter_loop).wave.energy_range.low=''

    spase.display_data.parameter(parameter_loop).wave.energy_range.high=''

    spase.display_data.parameter(parameter_loop).wave.energy_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).wave.frequency_range.spectral_range=''

    spase.display_data.parameter(parameter_loop).wave.frequency_range.low=''

    spase.display_data.parameter(parameter_loop).wave.frequency_range.high=''

    spase.display_data.parameter(parameter_loop).wave.frequency_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).wave.wavelength_range.spectral_range=''

    spase.display_data.parameter(parameter_loop).wave.wavelength_range.low=''

    spase.display_data.parameter(parameter_loop).wave.wavelength_range.high=''

    spase.display_data.parameter(parameter_loop).wave.wavelength_range.units=''

    for bin_loop=0,31 do begin

        spase.display_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).band_name=''

        spase.display_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).low=''

        spase.display_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).high=''

    endfor

    spase.display_data.parameter(parameter_loop).mixed.mixed_quantity=''

    for particle_type_loop=0,4 do spase.display_data.parameter(parameter_loop).mixed.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do spase.display_data.parameter(parameter_loop).mixed.qualifier(qualifier_loop)=''

    for qualifier_loop=0,4 do spase.display_data.parameter(parameter_loop).support.qualifier(qualifier_loop)=''

    spase.display_data.parameter(parameter_loop).support.support_quantity=''

endfor

spase.display_data.extension=''

spase.numerical_data.resource_id=''

spase.numerical_data.resource_header.resource_name=''

spase.numerical_data.resource_header.alternate_name=''

spase.numerical_data.resource_header.doi=''

spase.numerical_data.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.numerical_data.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.numerical_data.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.numerical_data.resource_header.expiration_date=''

spase.numerical_data.resource_header.description=''

spase.numerical_data.resource_header.acknowledgement=''

spase.numerical_data.resource_header.publication_info.authors=''

spase.numerical_data.resource_header.publication_info.publication_date=''

spase.numerical_data.resource_header.publication_info.published_by=''

spase.numerical_data.resource_header.funding.agency=''

spase.numerical_data.resource_header.funding.project=''

spase.numerical_data.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.numerical_data.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.numerical_data.resource_header.contact(contact_loop).role(role_loop)=''

    spase.numerical_data.resource_header.contact(contact_loop).start_date=''

    spase.numerical_data.resource_header.contact(contact_loop).stop_date=''

    spase.numerical_data.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.numerical_data.resource_header.information_url(information_url_loop).name=''

    spase.numerical_data.resource_header.information_url(information_url_loop).url=''

    spase.numerical_data.resource_header.information_url(information_url_loop).description=''

    spase.numerical_data.resource_header.information_url(information_url_loop).language=''

endfor

spase.numerical_data.resource_header.association.association_id=''

spase.numerical_data.resource_header.association.association_type=''

spase.numerical_data.resource_header.association.note=''

for prior_id_loop=0,8 do spase.numerical_data.resource_header.prior_id(prior_id_loop)=''

for access_information_loop=0,4 do begin

    spase.numerical_data.access_information(access_information_loop).repository_id=''

    spase.numerical_data.access_information(access_information_loop).availability=''

    spase.numerical_data.access_information(access_information_loop).access_rights=''

    for access_url_loop=0,4 do begin

        spase.numerical_data.access_information(access_information_loop).access_url(access_url_loop).name=''

        spase.numerical_data.access_information(access_information_loop).access_url(access_url_loop).url=''

        spase.numerical_data.access_information(access_information_loop).access_url(access_url_loop).style=''

        spase.numerical_data.access_information(access_information_loop).access_url(access_url_loop).product_key=''

        spase.numerical_data.access_information(access_information_loop).access_url(access_url_loop).description=''

        spase.numerical_data.access_information(access_information_loop).access_url(access_url_loop).language=''

    endfor

    spase.numerical_data.access_information(access_information_loop).format=''

    spase.numerical_data.access_information(access_information_loop).encoding=''

    spase.numerical_data.access_information(access_information_loop).data_extent.quantity=''

    spase.numerical_data.access_information(access_information_loop).data_extent.units=''

    spase.numerical_data.access_information(access_information_loop).data_extent.per=''

    spase.numerical_data.access_information(access_information_loop).acknowledgement=''

endfor

spase.numerical_data.processing_level=''

spase.numerical_data.provider_name=''

spase.numerical_data.provider_resource_name=''

spase.numerical_data.provider_processing_level=''

spase.numerical_data.provider_version=''

for instrument_id_loop=0,98 do spase.numerical_data.instrument_id(instrument_id_loop)=''

for measurement_type_loop=0,4 do spase.numerical_data.measurement_type(measurement_type_loop)=''

spase.numerical_data.temporal_description.time_span.start_date=''

if keyword_set(keyword_stop_date) then spase.numerical_data.temporal_description.time_span.stop_date=''

if keyword_set(keyword_relative_stop_date) then spase.numerical_data.temporal_description.time_span.relative_stop_date=''

spase.numerical_data.temporal_description.time_span.note=''

spase.numerical_data.temporal_description.cadence=''

spase.numerical_data.temporal_description.cadence_min=''

spase.numerical_data.temporal_description.cadence_max=''

spase.numerical_data.temporal_description.exposure=''

spase.numerical_data.temporal_description.exposure_min=''

spase.numerical_data.temporal_description.exposure_max=''

spase.numerical_data.spectral_range=''

for observed_region_loop=0,14 do spase.numerical_data.observed_region(observed_region_loop)=''

spase.numerical_data.caveats=''

for keyword_loop=0,98 do spase.numerical_data.keyword(keyword_loop)=''

spase.numerical_data.input_resource_id=''

for parameter_loop=0,14 do begin

    spase.numerical_data.parameter(parameter_loop).name=''

    spase.numerical_data.parameter(parameter_loop).set=''

    spase.numerical_data.parameter(parameter_loop).parameter_key=''

    spase.numerical_data.parameter(parameter_loop).description=''

    spase.numerical_data.parameter(parameter_loop).ucd=''

    spase.numerical_data.parameter(parameter_loop).caveats=''

    spase.numerical_data.parameter(parameter_loop).cadence=''

    spase.numerical_data.parameter(parameter_loop).cadence_min=''

    spase.numerical_data.parameter(parameter_loop).cadence_max=''

    spase.numerical_data.parameter(parameter_loop).units=''

    spase.numerical_data.parameter(parameter_loop).units_conversion=''

    spase.numerical_data.parameter(parameter_loop).coordinate_system.coordinate_representation=''

    spase.numerical_data.parameter(parameter_loop).coordinate_system.coordinate_system_name=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.display_type=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.axis_label=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.rendering_axis=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.index=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.value_format=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.scale_min=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.scale_max=''

    spase.numerical_data.parameter(parameter_loop).rendering_hints.scale_type=''

    spase.numerical_data.parameter(parameter_loop).structure.size=''

    spase.numerical_data.parameter(parameter_loop).structure.description=''

    for element_loop=0,3 do begin

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).name=''

        for qualifier_loop=0,4 do spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).qualifier(qualifier_loop)=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).index=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).parameter_key=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).units=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).units_conversion=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).valid_min=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).valid_max=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).fill_value=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.display_type=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.axis_label=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.rendering_axis=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.index=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.value_format=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_min=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_max=''

        spase.numerical_data.parameter(parameter_loop).structure.element(element_loop).rendering_hints.scale_type=''

    endfor

    spase.numerical_data.parameter(parameter_loop).valid_min=''

    spase.numerical_data.parameter(parameter_loop).valid_max=''

    spase.numerical_data.parameter(parameter_loop).fill_value=''

    for qualifier_loop=0,4 do spase.numerical_data.parameter(parameter_loop).field.qualifier(qualifier_loop)=''

    spase.numerical_data.parameter(parameter_loop).field.field_quantity=''

    spase.numerical_data.parameter(parameter_loop).field.frequency_range.spectral_range=''

    spase.numerical_data.parameter(parameter_loop).field.frequency_range.low=''

    spase.numerical_data.parameter(parameter_loop).field.frequency_range.high=''

    spase.numerical_data.parameter(parameter_loop).field.frequency_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).field.frequency_range.bin(bin_loop).high=''

    endfor

    for particle_type_loop=0,4 do spase.numerical_data.parameter(parameter_loop).particle.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do spase.numerical_data.parameter(parameter_loop).particle.qualifier(qualifier_loop)=''

    spase.numerical_data.parameter(parameter_loop).particle.particle_quantity=''

    for atomic_number_loop=0,4 do spase.numerical_data.parameter(parameter_loop).particle.atomic_number(atomic_number_loop)=''

    spase.numerical_data.parameter(parameter_loop).particle.energy_range.low=''

    spase.numerical_data.parameter(parameter_loop).particle.energy_range.high=''

    spase.numerical_data.parameter(parameter_loop).particle.energy_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).particle.energy_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.low=''

    spase.numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.high=''

    spase.numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).particle.polar_angle_range.low=''

    spase.numerical_data.parameter(parameter_loop).particle.polar_angle_range.high=''

    spase.numerical_data.parameter(parameter_loop).particle.polar_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).particle.mass_range.low=''

    spase.numerical_data.parameter(parameter_loop).particle.mass_range.high=''

    spase.numerical_data.parameter(parameter_loop).particle.mass_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).particle.mass_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).particle.pitch_angle_range.low=''

    spase.numerical_data.parameter(parameter_loop).particle.pitch_angle_range.high=''

    spase.numerical_data.parameter(parameter_loop).particle.pitch_angle_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).wave.wave_type=''

    for qualifier_loop=0,4 do spase.numerical_data.parameter(parameter_loop).wave.qualifier(qualifier_loop)=''

    spase.numerical_data.parameter(parameter_loop).wave.wave_quantity=''

    spase.numerical_data.parameter(parameter_loop).wave.energy_range.low=''

    spase.numerical_data.parameter(parameter_loop).wave.energy_range.high=''

    spase.numerical_data.parameter(parameter_loop).wave.energy_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).wave.energy_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).wave.frequency_range.spectral_range=''

    spase.numerical_data.parameter(parameter_loop).wave.frequency_range.low=''

    spase.numerical_data.parameter(parameter_loop).wave.frequency_range.high=''

    spase.numerical_data.parameter(parameter_loop).wave.frequency_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.spectral_range=''

    spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.low=''

    spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.high=''

    spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.units=''

    for bin_loop=0,31 do begin

        spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).band_name=''

        spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).low=''

        spase.numerical_data.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).high=''

    endfor

    spase.numerical_data.parameter(parameter_loop).mixed.mixed_quantity=''

    for particle_type_loop=0,4 do spase.numerical_data.parameter(parameter_loop).mixed.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do spase.numerical_data.parameter(parameter_loop).mixed.qualifier(qualifier_loop)=''

    for qualifier_loop=0,4 do spase.numerical_data.parameter(parameter_loop).support.qualifier(qualifier_loop)=''

    spase.numerical_data.parameter(parameter_loop).support.support_quantity=''

endfor

spase.numerical_data.extension=''

spase.document.resource_id=''

spase.document.resource_header.resource_name=''

spase.document.resource_header.alternate_name=''

spase.document.resource_header.doi=''

spase.document.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.document.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.document.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.document.resource_header.expiration_date=''

spase.document.resource_header.description=''

spase.document.resource_header.acknowledgement=''

spase.document.resource_header.publication_info.authors=''

spase.document.resource_header.publication_info.publication_date=''

spase.document.resource_header.publication_info.published_by=''

spase.document.resource_header.funding.agency=''

spase.document.resource_header.funding.project=''

spase.document.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.document.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.document.resource_header.contact(contact_loop).role(role_loop)=''

    spase.document.resource_header.contact(contact_loop).start_date=''

    spase.document.resource_header.contact(contact_loop).stop_date=''

    spase.document.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.document.resource_header.information_url(information_url_loop).name=''

    spase.document.resource_header.information_url(information_url_loop).url=''

    spase.document.resource_header.information_url(information_url_loop).description=''

    spase.document.resource_header.information_url(information_url_loop).language=''

endfor

spase.document.resource_header.association.association_id=''

spase.document.resource_header.association.association_type=''

spase.document.resource_header.association.note=''

for prior_id_loop=0,8 do spase.document.resource_header.prior_id(prior_id_loop)=''

for access_information_loop=0,4 do begin

    spase.document.access_information(access_information_loop).repository_id=''

    spase.document.access_information(access_information_loop).availability=''

    spase.document.access_information(access_information_loop).access_rights=''

    for access_url_loop=0,4 do begin

        spase.document.access_information(access_information_loop).access_url(access_url_loop).name=''

        spase.document.access_information(access_information_loop).access_url(access_url_loop).url=''

        spase.document.access_information(access_information_loop).access_url(access_url_loop).style=''

        spase.document.access_information(access_information_loop).access_url(access_url_loop).product_key=''

        spase.document.access_information(access_information_loop).access_url(access_url_loop).description=''

        spase.document.access_information(access_information_loop).access_url(access_url_loop).language=''

    endfor

    spase.document.access_information(access_information_loop).format=''

    spase.document.access_information(access_information_loop).encoding=''

    spase.document.access_information(access_information_loop).data_extent.quantity=''

    spase.document.access_information(access_information_loop).data_extent.units=''

    spase.document.access_information(access_information_loop).data_extent.per=''

    spase.document.access_information(access_information_loop).acknowledgement=''

endfor

for keyword_loop=0,98 do spase.document.keyword(keyword_loop)=''

spase.document.document_type=''

spase.document.mime_type=''

spase.document.input_resource_id=''

spase.software.resource_id=''

spase.software.resource_header.resource_name=''

spase.software.resource_header.alternate_name=''

spase.software.resource_header.doi=''

spase.software.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.software.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.software.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.software.resource_header.expiration_date=''

spase.software.resource_header.description=''

spase.software.resource_header.acknowledgement=''

spase.software.resource_header.publication_info.authors=''

spase.software.resource_header.publication_info.publication_date=''

spase.software.resource_header.publication_info.published_by=''

spase.software.resource_header.funding.agency=''

spase.software.resource_header.funding.project=''

spase.software.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.software.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.software.resource_header.contact(contact_loop).role(role_loop)=''

    spase.software.resource_header.contact(contact_loop).start_date=''

    spase.software.resource_header.contact(contact_loop).stop_date=''

    spase.software.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.software.resource_header.information_url(information_url_loop).name=''

    spase.software.resource_header.information_url(information_url_loop).url=''

    spase.software.resource_header.information_url(information_url_loop).description=''

    spase.software.resource_header.information_url(information_url_loop).language=''

endfor

spase.software.resource_header.association.association_id=''

spase.software.resource_header.association.association_type=''

spase.software.resource_header.association.note=''

for prior_id_loop=0,8 do spase.software.resource_header.prior_id(prior_id_loop)=''

spase.software.software_version=''

spase.software.application_interface=''

spase.software.code_language=''

spase.software.prerequisites=''

spase.software.platform.operating_system=''

spase.software.platform.installer=''

spase.software.platform.cores=''

spase.software.platform.storage=''

spase.software.platform.memory=''

spase.software.input_property.name=''

spase.software.input_property.description=''

spase.software.input_property.caveats=''

spase.software.input_property.units=''

spase.software.input_property.valid_min=''

spase.software.input_property.valid_max=''

spase.software.output_property.name=''

spase.software.output_property.description=''

spase.software.output_property.caveats=''

spase.software.output_property.units=''

spase.software.output_property.valid_min=''

spase.software.output_property.valid_max=''

spase.granule.resource_id=''

spase.granule.release_date=''

spase.granule.expiration_date=''

spase.granule.parent_id=''

for prior_id_loop=0,8 do spase.granule.prior_id(prior_id_loop)=''

spase.granule.start_date=''

spase.granule.stop_date=''

spase.granule.source.source_type=''

spase.granule.source.url=''

spase.granule.source.mirror_url=''

spase.granule.source.checksum.hash_value=''

spase.granule.source.checksum.hash_function=''

spase.granule.source.data_extent.quantity=''

spase.granule.source.data_extent.units=''

spase.granule.source.data_extent.per=''

spase.instrument.resource_id=''

spase.instrument.resource_header.resource_name=''

spase.instrument.resource_header.alternate_name=''

spase.instrument.resource_header.doi=''

spase.instrument.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.instrument.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.instrument.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.instrument.resource_header.expiration_date=''

spase.instrument.resource_header.description=''

spase.instrument.resource_header.acknowledgement=''

spase.instrument.resource_header.publication_info.authors=''

spase.instrument.resource_header.publication_info.publication_date=''

spase.instrument.resource_header.publication_info.published_by=''

spase.instrument.resource_header.funding.agency=''

spase.instrument.resource_header.funding.project=''

spase.instrument.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.instrument.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.instrument.resource_header.contact(contact_loop).role(role_loop)=''

    spase.instrument.resource_header.contact(contact_loop).start_date=''

    spase.instrument.resource_header.contact(contact_loop).stop_date=''

    spase.instrument.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.instrument.resource_header.information_url(information_url_loop).name=''

    spase.instrument.resource_header.information_url(information_url_loop).url=''

    spase.instrument.resource_header.information_url(information_url_loop).description=''

    spase.instrument.resource_header.information_url(information_url_loop).language=''

endfor

spase.instrument.resource_header.association.association_id=''

spase.instrument.resource_header.association.association_type=''

spase.instrument.resource_header.association.note=''

for prior_id_loop=0,8 do spase.instrument.resource_header.prior_id(prior_id_loop)=''

spase.instrument.instrument_type=''

spase.instrument.instrument_group_id=''

spase.instrument.investigation_name=''

spase.instrument.operating_span.start_date=''

spase.instrument.operating_span.stop_date=''

spase.instrument.operating_span.note=''

spase.instrument.observatory_id=''

spase.instrument.caveats=''

spase.instrument.extension=''

spase.observatory.resource_id=''

spase.observatory.resource_header.resource_name=''

spase.observatory.resource_header.alternate_name=''

spase.observatory.resource_header.doi=''

spase.observatory.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.observatory.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.observatory.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.observatory.resource_header.expiration_date=''

spase.observatory.resource_header.description=''

spase.observatory.resource_header.acknowledgement=''

spase.observatory.resource_header.publication_info.authors=''

spase.observatory.resource_header.publication_info.publication_date=''

spase.observatory.resource_header.publication_info.published_by=''

spase.observatory.resource_header.funding.agency=''

spase.observatory.resource_header.funding.project=''

spase.observatory.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.observatory.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.observatory.resource_header.contact(contact_loop).role(role_loop)=''

    spase.observatory.resource_header.contact(contact_loop).start_date=''

    spase.observatory.resource_header.contact(contact_loop).stop_date=''

    spase.observatory.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.observatory.resource_header.information_url(information_url_loop).name=''

    spase.observatory.resource_header.information_url(information_url_loop).url=''

    spase.observatory.resource_header.information_url(information_url_loop).description=''

    spase.observatory.resource_header.information_url(information_url_loop).language=''

endfor

spase.observatory.resource_header.association.association_id=''

spase.observatory.resource_header.association.association_type=''

spase.observatory.resource_header.association.note=''

for prior_id_loop=0,8 do spase.observatory.resource_header.prior_id(prior_id_loop)=''

spase.observatory.observatory_group_id=''

spase.observatory.location.observatory_region=''

spase.observatory.location.coordinate_system_name=''

spase.observatory.location.latitude=''

spase.observatory.location.longitude=''

spase.observatory.location.elevation=''

spase.observatory.operating_span.start_date=''

spase.observatory.operating_span.stop_date=''

spase.observatory.operating_span.note=''

spase.observatory.extension=''

spase.person.resource_id=''

spase.person.release_date=''

spase.person.person_name=''

spase.person.organization_name=''

spase.person.address=''

spase.person.email=''

spase.person.phone_number=''

spase.person.fax_number=''

spase.person.orc_identifier=''

spase.person.note=''

spase.person.extension=''

spase.registry.resource_id=''

spase.registry.resource_header.resource_name=''

spase.registry.resource_header.alternate_name=''

spase.registry.resource_header.doi=''

spase.registry.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.registry.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.registry.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.registry.resource_header.expiration_date=''

spase.registry.resource_header.description=''

spase.registry.resource_header.acknowledgement=''

spase.registry.resource_header.publication_info.authors=''

spase.registry.resource_header.publication_info.publication_date=''

spase.registry.resource_header.publication_info.published_by=''

spase.registry.resource_header.funding.agency=''

spase.registry.resource_header.funding.project=''

spase.registry.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.registry.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.registry.resource_header.contact(contact_loop).role(role_loop)=''

    spase.registry.resource_header.contact(contact_loop).start_date=''

    spase.registry.resource_header.contact(contact_loop).stop_date=''

    spase.registry.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.registry.resource_header.information_url(information_url_loop).name=''

    spase.registry.resource_header.information_url(information_url_loop).url=''

    spase.registry.resource_header.information_url(information_url_loop).description=''

    spase.registry.resource_header.information_url(information_url_loop).language=''

endfor

spase.registry.resource_header.association.association_id=''

spase.registry.resource_header.association.association_type=''

spase.registry.resource_header.association.note=''

for prior_id_loop=0,8 do spase.registry.resource_header.prior_id(prior_id_loop)=''

for access_url_loop=0,4 do begin

    spase.registry.access_url(access_url_loop).name=''

    spase.registry.access_url(access_url_loop).url=''

    spase.registry.access_url(access_url_loop).style=''

    spase.registry.access_url(access_url_loop).product_key=''

    spase.registry.access_url(access_url_loop).description=''

    spase.registry.access_url(access_url_loop).language=''

endfor

spase.registry.extension=''

spase.repository.resource_id=''

spase.repository.resource_header.resource_name=''

spase.repository.resource_header.alternate_name=''

spase.repository.resource_header.doi=''

spase.repository.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.repository.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.repository.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.repository.resource_header.expiration_date=''

spase.repository.resource_header.description=''

spase.repository.resource_header.acknowledgement=''

spase.repository.resource_header.publication_info.authors=''

spase.repository.resource_header.publication_info.publication_date=''

spase.repository.resource_header.publication_info.published_by=''

spase.repository.resource_header.funding.agency=''

spase.repository.resource_header.funding.project=''

spase.repository.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.repository.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.repository.resource_header.contact(contact_loop).role(role_loop)=''

    spase.repository.resource_header.contact(contact_loop).start_date=''

    spase.repository.resource_header.contact(contact_loop).stop_date=''

    spase.repository.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.repository.resource_header.information_url(information_url_loop).name=''

    spase.repository.resource_header.information_url(information_url_loop).url=''

    spase.repository.resource_header.information_url(information_url_loop).description=''

    spase.repository.resource_header.information_url(information_url_loop).language=''

endfor

spase.repository.resource_header.association.association_id=''

spase.repository.resource_header.association.association_type=''

spase.repository.resource_header.association.note=''

for prior_id_loop=0,8 do spase.repository.resource_header.prior_id(prior_id_loop)=''

for access_url_loop=0,4 do begin

    spase.repository.access_url(access_url_loop).name=''

    spase.repository.access_url(access_url_loop).url=''

    spase.repository.access_url(access_url_loop).style=''

    spase.repository.access_url(access_url_loop).product_key=''

    spase.repository.access_url(access_url_loop).description=''

    spase.repository.access_url(access_url_loop).language=''

endfor

spase.repository.extension=''

spase.service.resource_id=''

spase.service.resource_header.resource_name=''

spase.service.resource_header.alternate_name=''

spase.service.resource_header.doi=''

spase.service.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.service.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.service.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.service.resource_header.expiration_date=''

spase.service.resource_header.description=''

spase.service.resource_header.acknowledgement=''

spase.service.resource_header.publication_info.authors=''

spase.service.resource_header.publication_info.publication_date=''

spase.service.resource_header.publication_info.published_by=''

spase.service.resource_header.funding.agency=''

spase.service.resource_header.funding.project=''

spase.service.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.service.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.service.resource_header.contact(contact_loop).role(role_loop)=''

    spase.service.resource_header.contact(contact_loop).start_date=''

    spase.service.resource_header.contact(contact_loop).stop_date=''

    spase.service.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.service.resource_header.information_url(information_url_loop).name=''

    spase.service.resource_header.information_url(information_url_loop).url=''

    spase.service.resource_header.information_url(information_url_loop).description=''

    spase.service.resource_header.information_url(information_url_loop).language=''

endfor

spase.service.resource_header.association.association_id=''

spase.service.resource_header.association.association_type=''

spase.service.resource_header.association.note=''

for prior_id_loop=0,8 do spase.service.resource_header.prior_id(prior_id_loop)=''

for access_url_loop=0,4 do begin

    spase.service.access_url(access_url_loop).name=''

    spase.service.access_url(access_url_loop).url=''

    spase.service.access_url(access_url_loop).style=''

    spase.service.access_url(access_url_loop).product_key=''

    spase.service.access_url(access_url_loop).description=''

    spase.service.access_url(access_url_loop).language=''

endfor

spase.service.extension=''

spase.annotation.resource_id=''

spase.annotation.resource_header.resource_name=''

spase.annotation.resource_header.alternate_name=''

spase.annotation.resource_header.doi=''

spase.annotation.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    spase.annotation.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    spase.annotation.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

spase.annotation.resource_header.expiration_date=''

spase.annotation.resource_header.description=''

spase.annotation.resource_header.acknowledgement=''

spase.annotation.resource_header.publication_info.authors=''

spase.annotation.resource_header.publication_info.publication_date=''

spase.annotation.resource_header.publication_info.published_by=''

spase.annotation.resource_header.funding.agency=''

spase.annotation.resource_header.funding.project=''

spase.annotation.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    spase.annotation.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do spase.annotation.resource_header.contact(contact_loop).role(role_loop)=''

    spase.annotation.resource_header.contact(contact_loop).start_date=''

    spase.annotation.resource_header.contact(contact_loop).stop_date=''

    spase.annotation.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    spase.annotation.resource_header.information_url(information_url_loop).name=''

    spase.annotation.resource_header.information_url(information_url_loop).url=''

    spase.annotation.resource_header.information_url(information_url_loop).description=''

    spase.annotation.resource_header.information_url(information_url_loop).language=''

endfor

spase.annotation.resource_header.association.association_id=''

spase.annotation.resource_header.association.association_type=''

spase.annotation.resource_header.association.note=''

for prior_id_loop=0,8 do spase.annotation.resource_header.prior_id(prior_id_loop)=''

spase.annotation.image_url=''

spase.annotation.annotation_type=''

for phenomenon_type_loop=0,4 do spase.annotation.phenomenon_type(phenomenon_type_loop)=''

spase.annotation.classification_method=''

spase.annotation.confidence_rating=''

spase.annotation.time_span.start_date=''

if keyword_set(keyword_stop_date) then spase.annotation.time_span.stop_date=''

if keyword_set(keyword_relative_stop_date) then spase.annotation.time_span.relative_stop_date=''

spase.annotation.time_span.note=''

for observed_region_loop=0,14 do spase.annotation.observation_extent.observed_region(observed_region_loop)=''

spase.annotation.observation_extent.start_location=''

spase.annotation.observation_extent.stop_location=''

spase.annotation.observation_extent.note=''

spase.annotation.extension=''

return,spase

end

