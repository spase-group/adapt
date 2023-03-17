
function populate_instrument,spase_ontology,station_info,verbose=verbose

instrument=spase_model_create(spase_ontology,'instrument',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  INSTRUMENT List Num:                             3
;
;-------------------------------------------------------------------------------
;

association_type_list= $
   ['','ChildEventOf','DerivedFrom','ObservedBy','Other','PartOf','RevisionOf']

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

role_list= $
   ['','ArchiveSpecialist','CoInvestigator','Contributor','CoPI', $
    'DataProducer','DeputyPI','Developer','FormerPI','GeneralContact', $
    'HostContact','InstrumentLead','MetadataContact','MissionManager', $
    'MissionPrincipalInvestigator','PrincipalInvestigator','ProgramManager', $
    'ProgramScientist','ProjectEngineer','ProjectManager','ProjectScientist', $
    'Publisher','Scientist','TeamLeader','TeamMember','TechnicalContact', $
    'User']

instrument.resource_id=''

instrument.resource_header.resource_name=''

instrument.resource_header.alternate_name=''

instrument.resource_header.doi=''

instrument.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    instrument.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    instrument.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

instrument.resource_header.expiration_date=''

instrument.resource_header.description=''

instrument.resource_header.acknowledgement=''

instrument.resource_header.publication_info.authors=''

instrument.resource_header.publication_info.publication_date=''

instrument.resource_header.publication_info.published_by=''

instrument.resource_header.funding.agency=''

instrument.resource_header.funding.project=''

instrument.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    instrument.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do instrument.resource_header.contact(contact_loop).role(role_loop)=''

    instrument.resource_header.contact(contact_loop).start_date=''

    instrument.resource_header.contact(contact_loop).stop_date=''

    instrument.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    instrument.resource_header.information_url(information_url_loop).name=''

    instrument.resource_header.information_url(information_url_loop).url=''

    instrument.resource_header.information_url(information_url_loop).description=''

    instrument.resource_header.information_url(information_url_loop).language=''

endfor

instrument.resource_header.association.association_id=''

instrument.resource_header.association.association_type=''

instrument.resource_header.association.note=''

for prior_id_loop=0,8 do instrument.resource_header.prior_id(prior_id_loop)=''

instrument.instrument_type=''

instrument.instrument_group_id=''

instrument.investigation_name=''

instrument.operating_span.start_date=''

instrument.operating_span.stop_date=''

instrument.operating_span.note=''

instrument.observatory_id=''

instrument.caveats=''

instrument.extension=''

return,instrument

end

