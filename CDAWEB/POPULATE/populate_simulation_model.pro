
function populate_simulation_model,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

simulation_model=spase_model_create(spase_ontology,'simulation_model',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

;
;-------------------------------------------------------------------------------
;
;  SIMULATION_MODEL List Num:                      12
;
;-------------------------------------------------------------------------------
;

availability_list=['','Offline','Online']

encoding_list= $
   ['','ASCII','Base64','BZIP2','GZIP','None','S3_BUCKET','TAR','Unicode','ZIP']

format_list= $
   ['','AVI','Binary','CDF','CEF','CEF1','CEF2','CSV','Excel','FITS','GIF', $
    'Hardcopy','Hardcopy.Film','Hardcopy.Microfiche','Hardcopy.Microfilm', $
    'Hardcopy.Photograph','Hardcopy.PhotographicPlate','Hardcopy.Print','HDF', $
    'HDF4','HDF5','HTML','IDFS','IDL','JPEG','JSON','MATLAB_4','MATLAB_6', $
    'MATLAB_7','MPEG','NCAR','NetCDF','PDF','PDS4','PDS3','PNG','Postscript', $
    'QuickTime','RINEX2','RINEX3','Text','Text.ASCII','Text.Unicode','TFCat', $
    'TIFF','UDF','VOTable','XML']

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

role_list= $
   ['','Author','ArchiveSpecialist','CoInvestigator','CoPI','Contributor', $
    'DataProducer','DeputyPI','Developer','FormerPI','GeneralContact', $
    'HostContact','InstrumentLead','InstrumentScientist','MetadataContact', $
    'MissionManager','MissionPrincipalInvestigator','PrincipalInvestigator', $
    'ProgramManager','ProgramScientist','ProjectEngineer','ProjectManager', $
    'ProjectScientist','Publisher','Scientist','TeamLeader','TeamMember', $
    'TechnicalContact','User']

style_list= $
   ['','EPNTAP','File','Git','HAPI','Listing','Search','TAP','Template', $
    'Overview','WebService']

simulation_model.resource_id=''

simulation_model.resource_header.resource_name=''

simulation_model.resource_header.alternate_name=''

simulation_model.resource_header.doi=''

simulation_model.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    simulation_model.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    simulation_model.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

simulation_model.resource_header.expiration_date=''

simulation_model.resource_header.description=''

simulation_model.resource_header.acknowledgement=''

simulation_model.resource_header.publication_info.title=''

simulation_model.resource_header.publication_info.authors=''

simulation_model.resource_header.publication_info.publication_date=''

simulation_model.resource_header.publication_info.published_by=''

simulation_model.resource_header.publication_info.landing_page_url=''

simulation_model.resource_header.funding.agency=''

simulation_model.resource_header.funding.project=''

simulation_model.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    simulation_model.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do simulation_model.resource_header.contact(contact_loop).role(role_loop)=''

    simulation_model.resource_header.contact(contact_loop).start_date=''

    simulation_model.resource_header.contact(contact_loop).stop_date=''

    simulation_model.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    simulation_model.resource_header.information_url(information_url_loop).name=''

    simulation_model.resource_header.information_url(information_url_loop).url=''

    simulation_model.resource_header.information_url(information_url_loop).description=''

    simulation_model.resource_header.information_url(information_url_loop).language=''

endfor

simulation_model.resource_header.association.association_id=''

simulation_model.resource_header.association.association_type=''

simulation_model.resource_header.association.note=''

for prior_id_loop=0,8 do simulation_model.resource_header.prior_id(prior_id_loop)=''

simulation_model.access_information_optional.repository_id=''

simulation_model.access_information_optional.availability=''

simulation_model.access_information_optional.access_rights=''

for access_url_loop=0,4 do begin

    simulation_model.access_information_optional.access_url(access_url_loop).name=''

    simulation_model.access_information_optional.access_url(access_url_loop).url=''

    simulation_model.access_information_optional.access_url(access_url_loop).style=''

    simulation_model.access_information_optional.access_url(access_url_loop).product_key=''

    simulation_model.access_information_optional.access_url(access_url_loop).description=''

    simulation_model.access_information_optional.access_url(access_url_loop).language=''

endfor

simulation_model.access_information_optional.format=''

simulation_model.access_information_optional.encoding=''

simulation_model.access_information_optional.access_directory_template=''

simulation_model.access_information_optional.access_filename_template=''

simulation_model.access_information_optional.data_extent.quantity=''

simulation_model.access_information_optional.data_extent.units=''

simulation_model.access_information_optional.data_extent.per=''

simulation_model.access_information_optional.acknowledgement=''

simulation_model.versions.model_version.version_tag=''

simulation_model.versions.model_version.release_date=''

simulation_model.versions.model_version.description=''

simulation_model.versions.model_version.caveats=''

simulation_model.simulation_type=''

simulation_model.code_language=''

simulation_model.temporal_dependence=''

if keyword_set(keyword_spatial_description) then begin

   simulation_model.spatial_description.dimension=''

   simulation_model.spatial_description.coordinate_system.coordinate_representation=''

   simulation_model.spatial_description.coordinate_system.coordinate_system_name=''

   simulation_model.spatial_description.units=''

   simulation_model.spatial_description.units_conversion=''

   simulation_model.spatial_description.coordinates_label=''

   if keyword_set(keyword_cuts_description) then simulation_model.spatial_description.cuts_description=''

   if keyword_set(keyword_cubes_description) then simulation_model.spatial_description.cubes_description=''

   if keyword_set(keyword_plane_normal_vector) then simulation_model.spatial_description.plane_normal_vector=''

   if keyword_set(keyword_plane_point) then simulation_model.spatial_description.plane_point=''

   if keyword_set(keyword_region_begin) then simulation_model.spatial_description.region_begin=''

   if keyword_set(keyword_region_end) then simulation_model.spatial_description.region_end=''

   simulation_model.spatial_description.step=''

endif

simulation_model.simulated_region=''

simulation_model.input_properties.property.name=''

simulation_model.input_properties.property.description=''

simulation_model.input_properties.property.caveats=''

simulation_model.input_properties.property.property_quantity=''

for qualifier_loop=0,4 do simulation_model.input_properties.property.qualifier(qualifier_loop)=''

simulation_model.input_properties.property.units=''

simulation_model.input_properties.property.units_conversion=''

simulation_model.input_properties.property.property_label=''

simulation_model.input_properties.property.property_value=''

simulation_model.input_properties.property.property_table_url=''

simulation_model.input_properties.property.valid_min=''

simulation_model.input_properties.property.valid_max=''

simulation_model.input_properties.property.property_model=''

simulation_model.input_properties.property.model_url=''

for parameter_loop=0,7 do begin

    simulation_model.output_parameters.parameter(parameter_loop).name=''

    simulation_model.output_parameters.parameter(parameter_loop).set=''

    simulation_model.output_parameters.parameter(parameter_loop).parameter_key=''

    simulation_model.output_parameters.parameter(parameter_loop).description=''

    simulation_model.output_parameters.parameter(parameter_loop).ucd=''

    simulation_model.output_parameters.parameter(parameter_loop).caveats=''

    simulation_model.output_parameters.parameter(parameter_loop).cadence=''

    simulation_model.output_parameters.parameter(parameter_loop).cadence_min=''

    simulation_model.output_parameters.parameter(parameter_loop).cadence_max=''

    simulation_model.output_parameters.parameter(parameter_loop).units=''

    simulation_model.output_parameters.parameter(parameter_loop).units_conversion=''

    simulation_model.output_parameters.parameter(parameter_loop).coordinate_system.coordinate_representation=''

    simulation_model.output_parameters.parameter(parameter_loop).coordinate_system.coordinate_system_name=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.display_type=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.axis_label=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.rendering_axis=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.index=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.value_format=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.scale_min=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.scale_max=''

    simulation_model.output_parameters.parameter(parameter_loop).rendering_hints.scale_type=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.size=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.description=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.name=''

    for qualifier_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).structure.element.qualifier(qualifier_loop)=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.index=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.parameter_key=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.units=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.units_conversion=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.valid_min=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.valid_max=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.fill_value=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.display_type=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.axis_label=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.rendering_axis=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.index=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.value_format=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.scale_min=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.scale_max=''

    simulation_model.output_parameters.parameter(parameter_loop).structure.element.rendering_hints.scale_type=''

    simulation_model.output_parameters.parameter(parameter_loop).valid_min=''

    simulation_model.output_parameters.parameter(parameter_loop).valid_max=''

    simulation_model.output_parameters.parameter(parameter_loop).fill_value=''

    for qualifier_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).field.qualifier(qualifier_loop)=''

    simulation_model.output_parameters.parameter(parameter_loop).field.field_quantity=''

    simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.spectral_range=''

    simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).field.frequency_range.bin(bin_loop).high=''

    endfor

    for particle_type_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).particle.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).particle.qualifier(qualifier_loop)=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.particle_quantity=''

    for atomic_number_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).particle.atomic_number(atomic_number_loop)=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.energy_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.energy_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.energy_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).particle.energy_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.energy_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.energy_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).particle.azimuthal_angle_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.azimuthal_angle_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.azimuthal_angle_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.azimuthal_angle_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).particle.polar_angle_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.polar_angle_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.polar_angle_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.polar_angle_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).particle.mass_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.mass_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.mass_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).particle.mass_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.mass_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.mass_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).particle.pitch_angle_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.pitch_angle_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.pitch_angle_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).particle.pitch_angle_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).particle.chemical_formula=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.population=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.population_mass_number=''

    simulation_model.output_parameters.parameter(parameter_loop).particle.population_charge_state=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.wave_type=''

    for qualifier_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).wave.qualifier(qualifier_loop)=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.wave_quantity=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.energy_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.energy_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.energy_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).wave.energy_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).wave.energy_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).wave.energy_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.spectral_range=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).wave.frequency_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.spectral_range=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.low=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.high=''

    simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.units=''

    for bin_loop=0,31 do begin

        simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).band_name=''

        simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).low=''

        simulation_model.output_parameters.parameter(parameter_loop).wave.wavelength_range.bin(bin_loop).high=''

    endfor

    simulation_model.output_parameters.parameter(parameter_loop).mixed.mixed_quantity=''

    for particle_type_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).mixed.particle_type(particle_type_loop)=''

    for qualifier_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).mixed.qualifier(qualifier_loop)=''

    for qualifier_loop=0,4 do simulation_model.output_parameters.parameter(parameter_loop).support.qualifier(qualifier_loop)=''

    simulation_model.output_parameters.parameter(parameter_loop).support.support_quantity=''

endfor

simulation_model.model_url=''

return,simulation_model

end

