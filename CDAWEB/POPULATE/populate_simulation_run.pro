
function populate_simulation_run,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

simulation_run=spase_model_create(spase_ontology,'simulation_run',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

;
;-------------------------------------------------------------------------------
;
;  SIMULATION_RUN List Num:                        11
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

symmetry_list=['','Axial','Central','None','Plane']

simulation_run.resource_id=''

simulation_run.resource_header.resource_name=''

simulation_run.resource_header.alternate_name=''

simulation_run.resource_header.doi=''

simulation_run.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    simulation_run.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    simulation_run.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

simulation_run.resource_header.expiration_date=''

simulation_run.resource_header.description=''

simulation_run.resource_header.acknowledgement=''

simulation_run.resource_header.publication_info.title=''

simulation_run.resource_header.publication_info.authors=''

simulation_run.resource_header.publication_info.publication_date=''

simulation_run.resource_header.publication_info.published_by=''

simulation_run.resource_header.publication_info.landing_page_url=''

simulation_run.resource_header.funding.agency=''

simulation_run.resource_header.funding.project=''

simulation_run.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    simulation_run.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do simulation_run.resource_header.contact(contact_loop).role(role_loop)=''

    simulation_run.resource_header.contact(contact_loop).start_date=''

    simulation_run.resource_header.contact(contact_loop).stop_date=''

    simulation_run.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    simulation_run.resource_header.information_url(information_url_loop).name=''

    simulation_run.resource_header.information_url(information_url_loop).url=''

    simulation_run.resource_header.information_url(information_url_loop).description=''

    simulation_run.resource_header.information_url(information_url_loop).language=''

endfor

simulation_run.resource_header.association.association_id=''

simulation_run.resource_header.association.association_type=''

simulation_run.resource_header.association.note=''

for prior_id_loop=0,8 do simulation_run.resource_header.prior_id(prior_id_loop)=''

for access_information_loop=0,4 do begin

    simulation_run.access_information(access_information_loop).repository_id=''

    simulation_run.access_information(access_information_loop).availability=''

    simulation_run.access_information(access_information_loop).access_rights=''

    for access_url_loop=0,4 do begin

        simulation_run.access_information(access_information_loop).access_url(access_url_loop).name=''

        simulation_run.access_information(access_information_loop).access_url(access_url_loop).url=''

        simulation_run.access_information(access_information_loop).access_url(access_url_loop).style=''

        simulation_run.access_information(access_information_loop).access_url(access_url_loop).product_key=''

        simulation_run.access_information(access_information_loop).access_url(access_url_loop).description=''

        simulation_run.access_information(access_information_loop).access_url(access_url_loop).language=''

    endfor

    simulation_run.access_information(access_information_loop).format=''

    simulation_run.access_information(access_information_loop).encoding=''

    simulation_run.access_information(access_information_loop).access_directory_template=''

    simulation_run.access_information(access_information_loop).access_filename_template=''

    simulation_run.access_information(access_information_loop).data_extent.quantity=''

    simulation_run.access_information(access_information_loop).data_extent.units=''

    simulation_run.access_information(access_information_loop).data_extent.per=''

    simulation_run.access_information(access_information_loop).acknowledgement=''

endfor

simulation_run.provider_resource_name=''

simulation_run.provider_processing_level=''

simulation_run.provider_version=''

simulation_run.model.model_id=''

simulation_run.model.version_tag=''

simulation_run.temporal_dependence=''

simulation_run.simulated_region=''

simulation_run.likelihood_rating=''

simulation_run.caveats=''

for keyword_loop=0,98 do simulation_run.keyword(keyword_loop)=''

simulation_run.input_resource_id=''

simulation_run.simulation_time.description=''

simulation_run.simulation_time.caveats=''

simulation_run.simulation_time.duration=''

simulation_run.simulation_time.time_start=''

simulation_run.simulation_time.time_stop=''

simulation_run.simulation_time.time_step=''

simulation_run.simulation_time.diagnosis_time_step.time_start=''

simulation_run.simulation_time.diagnosis_time_step.duration=''

simulation_run.simulation_time.diagnosis_time_step.saved_quantity=''

simulation_run.simulation_domain.coordinate_system.coordinate_representation=''

simulation_run.simulation_domain.coordinate_system.coordinate_system_name=''

simulation_run.simulation_domain.description=''

simulation_run.simulation_domain.caveats=''

simulation_run.simulation_domain.spatial_dimension=''

simulation_run.simulation_domain.velocity_dimension=''

simulation_run.simulation_domain.field_dimension=''

simulation_run.simulation_domain.units=''

simulation_run.simulation_domain.units_conversion=''

simulation_run.simulation_domain.coordinates_label=''

simulation_run.simulation_domain.valid_min=''

simulation_run.simulation_domain.valid_max=''

simulation_run.simulation_domain.grid_structure=''

simulation_run.simulation_domain.grid_cell_size=''

simulation_run.simulation_domain.symmetry=''

simulation_run.simulation_domain.boundary_conditions.particle_boundary=''

simulation_run.simulation_domain.boundary_conditions.field_boundary=''

if keyword_set(keyword_region_parameter) then begin

   simulation_run.region_parameter.simulated_region=''

   simulation_run.region_parameter.description=''

   simulation_run.region_parameter.caveats=''

   simulation_run.region_parameter.radius=''

   simulation_run.region_parameter.sub_longitude=''

   simulation_run.region_parameter.period=''

   simulation_run.region_parameter.object_mass=''

   simulation_run.region_parameter.input_table_url=''

   simulation_run.region_parameter.property.name=''

   simulation_run.region_parameter.property.description=''

   simulation_run.region_parameter.property.caveats=''

   simulation_run.region_parameter.property.property_quantity=''

   for qualifier_loop=0,4 do simulation_run.region_parameter.property.qualifier(qualifier_loop)=''

   simulation_run.region_parameter.property.units=''

   simulation_run.region_parameter.property.units_conversion=''

   simulation_run.region_parameter.property.property_label=''

   simulation_run.region_parameter.property.property_value=''

   simulation_run.region_parameter.property.property_table_url=''

   simulation_run.region_parameter.property.valid_min=''

   simulation_run.region_parameter.property.valid_max=''

   simulation_run.region_parameter.property.property_model=''

   simulation_run.region_parameter.property.model_url=''

endif

if keyword_set(keyword_input_parameter) then begin

   simulation_run.input_parameter.name=''

   simulation_run.input_parameter.description=''

   simulation_run.input_parameter.caveats=''

   simulation_run.input_parameter.simulated_region=''

   for qualifier_loop=0,4 do simulation_run.input_parameter.qualifier(qualifier_loop)=''

   simulation_run.input_parameter.input_table_url=''

   simulation_run.input_parameter.parameter_quantity=''

   simulation_run.input_parameter.property.name=''

   simulation_run.input_parameter.property.description=''

   simulation_run.input_parameter.property.caveats=''

   simulation_run.input_parameter.property.property_quantity=''

   for qualifier_loop=0,4 do simulation_run.input_parameter.property.qualifier(qualifier_loop)=''

   simulation_run.input_parameter.property.units=''

   simulation_run.input_parameter.property.units_conversion=''

   simulation_run.input_parameter.property.property_label=''

   simulation_run.input_parameter.property.property_value=''

   simulation_run.input_parameter.property.property_table_url=''

   simulation_run.input_parameter.property.valid_min=''

   simulation_run.input_parameter.property.valid_max=''

   simulation_run.input_parameter.property.property_model=''

   simulation_run.input_parameter.property.model_url=''

endif

if keyword_set(keyword_input_population) then begin

   simulation_run.input_population.name=''

   simulation_run.input_population.set=''

   simulation_run.input_population.parameter_key=''

   simulation_run.input_population.description=''

   simulation_run.input_population.caveats=''

   simulation_run.input_population.simulated_region=''

   for qualifier_loop=0,4 do simulation_run.input_population.qualifier(qualifier_loop)=''

   for particle_type_loop=0,4 do simulation_run.input_population.particle_type(particle_type_loop)=''

   simulation_run.input_population.chemical_formula=''

   for atomic_number_loop=0,4 do simulation_run.input_population.atomic_number(atomic_number_loop)=''

   simulation_run.input_population.population_mass_number=''

   simulation_run.input_population.population_charge_state=''

   simulation_run.input_population.population_density=''

   simulation_run.input_population.population_temperature=''

   simulation_run.input_population.population_flow_speed=''

   simulation_run.input_population.distribution=''

   simulation_run.input_population.production_rate=''

   simulation_run.input_population.total_production_rate=''

   simulation_run.input_population.input_table_url=''

   simulation_run.input_population.density_profile=''

   simulation_run.input_population.model_url=''

endif

if keyword_set(keyword_input_field) then begin

   simulation_run.input_field.name=''

   simulation_run.input_field.set=''

   simulation_run.input_field.parameter_key=''

   simulation_run.input_field.description=''

   simulation_run.input_field.caveats=''

   simulation_run.input_field.simulated_region=''

   simulation_run.input_field.coordinate_system.coordinate_representation=''

   simulation_run.input_field.coordinate_system.coordinate_system_name=''

   for qualifier_loop=0,4 do simulation_run.input_field.qualifier(qualifier_loop)=''

   simulation_run.input_field.field_quantity=''

   simulation_run.input_field.units=''

   simulation_run.input_field.units_conversion=''

   simulation_run.input_field.input_label=''

   simulation_run.input_field.field_value=''

   simulation_run.input_field.input_table_url=''

   simulation_run.input_field.valid_min=''

   simulation_run.input_field.valid_max=''

   simulation_run.input_field.field_model=''

   simulation_run.input_field.model_url=''

endif

if keyword_set(keyword_input_process) then begin

   simulation_run.input_process.name=''

   simulation_run.input_process.set=''

   simulation_run.input_process.parameter_key=''

   simulation_run.input_process.description=''

   simulation_run.input_process.caveats=''

   simulation_run.input_process.simulated_region=''

   simulation_run.input_process.process_type=''

   simulation_run.input_process.units=''

   simulation_run.input_process.units_conversion=''

   simulation_run.input_process.process_coefficient=''

   simulation_run.input_process.process_coeff_type=''

   simulation_run.input_process.process_model=''

   simulation_run.input_process.model_url=''

endif

simulation_run.extension=''

return,simulation_run

end

