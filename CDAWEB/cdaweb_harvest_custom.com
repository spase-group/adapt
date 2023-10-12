
!EXCEPT=2

start_process=systime(1)

stars=strjoin(replicate('*',275))

dashes='+'+strjoin(replicate('-',273))+'+'

project='CDAWEB'

project_lower=strlowcase(project)

project_upper=strupcase(project)

print,stars,format='(/a/)'

print,'Metadata Project:  '+project,format='(a/)'

print,stars,format='(a/)'

print,'Processing Start:  '+systime(),format='(a/)'

print,stars,format='(a/)'

;
;   Directory Definitions
;

base_dir='/Users/astropooch/Space/PROGRAMS/HARVEST/'

program_dir=base_dir

project_program_dir=base_dir+project_upper+'/'

data_dir='/Users/astropooch/Space/DATA/'

xml_dir=project_program_dir+'XML/'

spase_dir=base_dir+'SPASE/SCHEMA/'

;
;   Expand the path for compiling IDL code
;

expand_path=':'+program_dir+['','SPASE/',project_upper+'/'+['','CREATE/','WRITE/','POPULATE/']]

!PATH=!PATH+strjoin(expand_path)

;
;   Compile IDL Canned Routines
;

.run caldat
.run julday
.run strsplit
.run timestamp
.run uniq

print,''

;
;   Compile UCLA General Usage Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/cdf_date_to_spase_date
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/fix_invalid_xml_characters
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/trim_trailing_zeroes
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/date_time_string
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/format_float
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/format_integer
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/string_position
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/string_condition
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/read_ascii
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/variable_attribute_superset
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/read_cdf_metadata
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/read_ls
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/read_md5
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/read_tab_table
.run /Users/astropooch/Space/PROGRAMS/HARVEST/GENERAL/write_tab_table

print,''

;
;   Compile SPASE Schema Specific Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_reformat
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_tree
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_ontology_decode
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_ontology
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_keyword
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_enumerate
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_structure
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_populate
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_write
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_write_suffix
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_blank_check
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_uniqueness
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_xml_tag_open
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/xml_tag_open
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/xml_tag_close
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/xml_element_write
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/xml_mirror
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/xml_structure_write
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/line_margin
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/read_spase_xml
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/register_resource
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/read_ack
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/ontology_tree
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/read_ontology
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/enumeration_tree
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/read_enumeration
.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/spase_model_populate_new

print,''

;
;   Compile UCLA Specific SPASE Populate Program
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/SPASE/CUSTOM/populate_registry_person_ucla

print,''

;
;   Compile CDAWEB Specific Metadata Harvesting Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_spase_model_custom
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_spase
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_harvest_data_product
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_harvest_all
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_station_info
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_rule_set
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_granulate
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_granule_date_time
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_date_time
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_spase_map_measurement_type
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_spase_map_cadence
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_instrument_id_list

print,''

;
;   Compile MMS Custom Resource Description Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_aspoc_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_dsp_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_edi_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_edp_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_epd_eis_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_feeps_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_fgm_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_fpi_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_hpca_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_mec_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/mms_scm_description

print,''

;
;   Compile Voyager Custom PLS Energy Channel Program
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/voyager_pls_energy_channel

print,''

;
;   Compile Project Specific SPASE Populate Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_registry
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_person
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_repository
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_observatory
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_observatory_logical
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_instrument
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_numerical_data
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/populate_granule

print,''

;
;   Compile CDAWEB Specific SPASE Write Programs
;

;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/write_physical_parameter_custom
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/write_physical_parameter_time
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/write_numerical_data_custom

print,''

log_dir=project_program_dir+'LOG/'

file_check=file_info(log_dir)

if (file_check.exists eq 0) then file_mkdir,log_dir

iso_8601_date=timestamp()

process_yymmdd=strmid(iso_8601_date,2,2)+strmid(iso_8601_date,5,2)+strmid(iso_8601_date,8,2)

create_harvest_log_file_name=log_dir+project_lower+'_harvest_'+process_yymmdd+'.log'

version_num=['1_2_2','2_0_0','2_0_1','2_1_0','2_2_0','2_2_2','2_2_9','2_3_0','2_3_1','2_3_2','2_4_0']

spase_versions=replicate(create_struct('version_num','','version_date','','xml_version_num','1.0'),n_elements(version_num))

spase_versions.version_num=version_num

spase_versions.version_date=['080320','090431','090431','090319','100917','110915','170921','180531','190613','201015','210902']

spase_version=spase_versions(10)

openw,20,create_harvest_log_file_name

printf,20,stars,format='(/a/)'

printf,20,'BASH Script:       CDAWEB_HARVEST_CUSTOM',format='(a/)'

printf,20,'Processing Start:  ',systime(),format='(2a/)'

printf,20,stars,format='(a/)'

spase_ontology=cdaweb_spase_model(spase_version,spase_dir,project_program_dir,data_product_name,date_style)

;
;  Compile Custom SPASE Create Program
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/spase_model_create

print,''

;
;  Compile Generic SPASE 1.2.2 Legacy Write Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_spase
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_catalog
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_resource_header
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_publication_info
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_funding
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_contact
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_information_url
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_access_information
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_access_url
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_data_extent
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_time_span
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_display_data
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_temporal_description
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_numerical_data
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_coordinate_system
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_structure
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_element
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_field
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_frequency_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_wavelength_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_particle
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_energy_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_azimuthal_angle_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_polar_angle_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_mass_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_pitch_angle_range
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_wave
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_mixed
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_support
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_bin
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_granule
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_checksum
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_instrument
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_observatory
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_location
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_person
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_registry
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_repository
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_service

;
;    Compile New WRITE routines added in transition from SPASE 1.2.2 to SPASE 2.0.0
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_association
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_parameter
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_rendering_hints
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_document
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_source
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_annotation
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_observation_extent

;
;    Compile New WRITE routines added in transition from SPASE 2.0.0 to SPASE 2.1.0
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_operating_span

print,''

;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_spase
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_catalog
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_resource_header
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_contact
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_information_url
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_access_information
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_access_url
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_operating_span
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_data_extent
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_time_span
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_display_data
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_temporal_description
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_numerical_data
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_coordinate_system
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_structure
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_element
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_field
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_frequency_range
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_particle
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_energy_range
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_azimuthal_angle_range
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_polar_angle_range
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_bin
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_granule
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_checksum
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_instrument
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_observatory
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_location
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_person
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_registry
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_repository
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/POPULATE/populate_service

;rint,''

;
;   Compile CDAWEB Master CDF and SPASE Utility Programs
;

.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/global_attribute_grep
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cadence_iso8601
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/keyword_populate
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/variable_attribute_grep
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/variable_attribute_metadata_grep
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_dimension_structure
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_granulate_finalize
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/cdaweb_metadata_unpack
.run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/date_to_scale_min_max

;
;   Compile the SPASE Extension Writing Programs
;

;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_simulation_model
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_versions
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_model_version
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_spatial_description
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_cubes_description
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_cuts_description
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_input_properties
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_property
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_output_parameters
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_simulation_run
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_model
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_simulation_time
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_diagnosis_time_step
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_simulation_domain
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_boundary_conditions
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_particle_boundary
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_element_boundary
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_field_boundary
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_region_parameter
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_input_parameter
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_input_population
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_input_field
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_input_process
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_numerical_output
;run /Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/WRITE/write_display_output

print,stars,format='(/a/)'

file_check=file_info(xml_dir)

if (file_check.exists eq 0) then file_mkdir,xml_dir

spase_xml_template_file_name=xml_dir+'spase_model.xml'

openw,10,spase_xml_template_file_name

check_process=systime(1)

elapsed_time=check_process-start_process

printf,20,stars,format='(a/)'

printf,20,'Processing Check:  ',systime(),format='(2a/)'

printf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

printf,20,stars,format='(a/)'

print,'Processing Check:  '+systime(),format='(a/)'

print,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;pase=spase_model_create(spase_ontology,'spase',/verbose,/keyword_stop_date,/keyword_field)

;pase=spase_model_create(spase_ontology,'spase',/verbose,/keyword_stop_date)

check_process=systime(1)

elapsed_time=check_process-start_process

printf,20,stars,format='(a/)'

printf,20,'Processing Check:  ',systime(),format='(2a/)'

printf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

printf,20,stars,format='(a/)'

print,'Processing Check:  '+systime(),format='(a/)'

print,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;pase_xml=write_spase(spase,spase_ontology,spase_version,/keyword_stop_date,/keyword_field,/preview)

;pase_xml=write_spase(spase,spase_ontology,spase_version,/keyword_stop_date,/preview)

;heck_process=systime(1)

;lapsed_time=check_process-start_process

;rintf,20,stars,format='(/a/)'

;rintf,20,'Processing Check:  ',systime(),format='(2a/)'

;rintf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;rintf,20,stars,format='(a/)'

;rint,'Processing Check:  '+systime(),format='(/a/)'

;rint,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;nique_spase_index=spase_model_uniqueness(strjoin(spase_xml))

;pase_xml=write_spase(spase,spase_ontology,spase_version,/keyword_stop_date,/keyword_field,/full)

;pase_xml=write_spase(spase,spase_ontology,spase_version,/keyword_stop_date,/full)

;elp,spase,/structure

;heck_process=systime(1)

;lapsed_time=check_process-start_process

;rintf,20,stars,format='(/a/)'

;rintf,20,'Processing Check:  ',systime(),format='(2a/)'

;rintf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;rintf,20,stars,format='(a/)'

;rint,'Processing Check:  '+systime(),format='(/a/)'

;rint,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;umerical_data=spase_model_create(spase_ontology,'numerical_data',/verbose,/keyword_stop_date,/keyword_field)

;umerical_data=spase_model_create(spase_ontology,'numerical_data',/verbose,/keyword_stop_date)

check_process=systime(1)

elapsed_time=check_process-start_process

printf,20,stars,format='(a/)'

printf,20,'Processing Check:  ',systime(),format='(2a/)'

printf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

printf,20,stars,format='(a/)'

print,'Processing Check:  '+systime(),format='(a/)'

print,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

full_index=0

;umerical_data_xml=write_numerical_data(numerical_data,spase_ontology(342:514),spase_xml,full_index,/keyword_stop_date,/keyword_field,/preview)

;umerical_data_xml=write_numerical_data(numerical_data,spase_ontology(342:514),spase_xml,full_index,/keyword_stop_date,/preview)

;elp,numerical_data,/structure

;heck_process=systime(1)

;lapsed_time=check_process-start_process

;rintf,20,stars,format='(/a/)'

;rintf,20,'Processing Check:  ',systime(),format='(2a/)'

;rintf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;rintf,20,stars,format='(a/)'

;rint,'Processing Check:  '+systime(),format='(/a/)'

;rint,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;ull_index=0

;umerical_data_xml=write_numerical_data(numerical_data,spase_ontology(342:514),spase_xml,full_index,/keyword_stop_date,/keyword_field,/full)

;umerical_data_xml=write_numerical_data(numerical_data,spase_ontology(342:514),spase_xml,full_index,/keyword_stop_date,/full)

;elp,numerical_data,/structure

close,10

check_process=systime(1)

elapsed_time=check_process-start_process

printf,20,stars,format='(a/)'

printf,20,'Processing Check:  ',systime(),format='(2a/)'

printf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

printf,20,stars,format='(a/)'

print,'Processing Check:  '+systime(),format='(a/)'

print,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

;
;   Harvest the Project Specific Data Sets
;

cdf_master_dir_name='/Users/lfb/Space/DATA/CDAWEB/MASTERS/CDF_UNTARRED'

cdf_master_dir_name='/Users/lfb/Space/DATA/CDAWEB/MASTERS/CDF_MASTERLESS_SAMURAI'

cdf_master_dir_name='/Users/lfb/Space/DATA/CDAWEB/MASTERS/CDF_MISC'

cdf_master_dir_name='/Users/lfb/Space/DATA/CDAWEB/MASTERS/CDF_MGET'

cdf_master_dir_name='/Users/lfb/Space/DATA/CDAWEB/MASTERS/CDF_MGET_120517'

cdf_master_dir_name='/Users/lfb/Space/DATA/CDAWEB/MASTERS/CDF_THEMIS_LEVEL_1'

cdf_master_dir_name='/Users/lfb/Desktop/FAST'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/CDF_MASTER'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/INFO/MASTER_COMPILE_150807'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_150614_CDAW9_006'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_151113'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_160129_NEW_DATA_PRODUCT_FAST'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_151213_NEW_DATA_PRODUCT'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_MMS_NEW'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_150614'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_THEMIS_THG_170212'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_170212_THEMIS_THG'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_170222_THEMIS_THG'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_170606'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_COMPILE_170613'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS_MAVEN'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS_TSS'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS_MMS_FPI'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS_CDAWEB_TO_SPASE_181201'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS_CASSINI'

cdf_master_dir_name='/Users/admin/Space/PROGRAMS/HARVEST/CDAWEB/MASTER_180729/MASTERS_NO_PARAMETERS'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20190408'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20190607'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20190628'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20190805'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191031'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191107'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191116'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191125'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191127'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191209'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191230'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20200320'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20191121'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20200325'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20200430'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20200519'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20201023'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20210204'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20210609'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20210810'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20210813'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20220315'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20220409'

cdf_master_dir_name='/Users/astropooch/Space/PROGRAMS/HARVEST/CDAWEB/MASTERS_20221204'

print,stars,'Hello World !!!',stars,format='(a//a//a/)'

cdaweb_harvest_all,spase_ontology,spase_version,cdf_master_dir_name,project,project_program_dir,base_dir,data_dir,process_yymmdd,data_product_name,date_style

stop_process=systime(1)

elapsed_time=stop_process-start_process

printf,20,stars,format='(a/)'

printf,20,'Processing Stop:   ',systime(),format='(2a/)'

printf,20,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

printf,20,stars,format='(a/)'

print,stars,format='(a/)'

print,'Processing Stop:   ',systime(),format='(2a/)'

print,'Processing Time:   ',elapsed_time,' sec',format='(a18,f8.2,a4/)'

print,stars,format='(a/)'

close,20

exit

