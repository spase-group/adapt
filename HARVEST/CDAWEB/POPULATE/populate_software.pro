
function populate_software,spase_ontology,station_info,verbose=verbose

software=spase_model_create(spase_ontology,'software',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  SOFTWARE List Num:                               3
;
;-------------------------------------------------------------------------------
;

application_interface_list=['','API','CLI','GUI']

association_type_list= $
   ['','ChildEventOf','DerivedFrom','ObservedBy','Other','PartOf','RevisionOf']

role_list= $
   ['','ArchiveSpecialist','CoInvestigator','Contributor','CoPI', $
    'DataProducer','DeputyPI','Developer','FormerPI','GeneralContact', $
    'HostContact','InstrumentLead','MetadataContact','MissionManager', $
    'MissionPrincipalInvestigator','PrincipalInvestigator','ProgramManager', $
    'ProgramScientist','ProjectEngineer','ProjectManager','ProjectScientist', $
    'Publisher','Scientist','TeamLeader','TeamMember','TechnicalContact', $
    'User']

software.resource_id=''

software.resource_header.resource_name=''

software.resource_header.alternate_name=''

software.resource_header.doi=''

software.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    software.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    software.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

software.resource_header.expiration_date=''

software.resource_header.description=''

software.resource_header.acknowledgement=''

software.resource_header.publication_info.authors=''

software.resource_header.publication_info.publication_date=''

software.resource_header.publication_info.published_by=''

software.resource_header.funding.agency=''

software.resource_header.funding.project=''

software.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    software.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do software.resource_header.contact(contact_loop).role(role_loop)=''

    software.resource_header.contact(contact_loop).start_date=''

    software.resource_header.contact(contact_loop).stop_date=''

    software.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    software.resource_header.information_url(information_url_loop).name=''

    software.resource_header.information_url(information_url_loop).url=''

    software.resource_header.information_url(information_url_loop).description=''

    software.resource_header.information_url(information_url_loop).language=''

endfor

software.resource_header.association.association_id=''

software.resource_header.association.association_type=''

software.resource_header.association.note=''

for prior_id_loop=0,8 do software.resource_header.prior_id(prior_id_loop)=''

software.software_version=''

software.application_interface=''

software.code_language=''

software.prerequisites=''

software.platform.operating_system=''

software.platform.installer=''

software.platform.cores=''

software.platform.storage=''

software.platform.memory=''

software.input_property.name=''

software.input_property.description=''

software.input_property.caveats=''

software.input_property.units=''

software.input_property.valid_min=''

software.input_property.valid_max=''

software.output_property.name=''

software.output_property.description=''

software.output_property.caveats=''

software.output_property.units=''

software.output_property.valid_min=''

software.output_property.valid_max=''

return,software

end

