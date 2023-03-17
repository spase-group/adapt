
function populate_observatory,spase_ontology,station_info,verbose=verbose

observatory=spase_model_create(spase_ontology,'observatory',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  OBSERVATORY List Num:                            4
;
;-------------------------------------------------------------------------------
;

association_type_list= $
   ['','ChildEventOf','DerivedFrom','ObservedBy','Other','PartOf','RevisionOf']

coordinate_system_name_list= $
   ['','Carrington','CGM','CSO','DM','ECD','ECEF','ENP','GEI','GEO','GPHIO', $
    'GSE','GSEQ','GSM','HAE','HCC','HCI','HCR','HEE','HEEQ','HERTN','HG', $
    'HGI','HGRTN','HPC','HPR','HSM','J2000','JSM','JSO','KSM','KSO','LGM', $
    'MAG','MFA','MSO','RTN','SC','SE','SM','SpacecraftOrbitPlane','SR','SR2', $
    'SSE','SSE_L','TIIS','VSO','WGS84']

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

role_list= $
   ['','ArchiveSpecialist','CoInvestigator','Contributor','CoPI', $
    'DataProducer','DeputyPI','Developer','FormerPI','GeneralContact', $
    'HostContact','InstrumentLead','MetadataContact','MissionManager', $
    'MissionPrincipalInvestigator','PrincipalInvestigator','ProgramManager', $
    'ProgramScientist','ProjectEngineer','ProjectManager','ProjectScientist', $
    'Publisher','Scientist','TeamLeader','TeamMember','TechnicalContact', $
    'User']

observatory.resource_id=''

observatory.resource_header.resource_name=''

observatory.resource_header.alternate_name=''

observatory.resource_header.doi=''

observatory.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    observatory.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    observatory.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

observatory.resource_header.expiration_date=''

observatory.resource_header.description=''

observatory.resource_header.acknowledgement=''

observatory.resource_header.publication_info.authors=''

observatory.resource_header.publication_info.publication_date=''

observatory.resource_header.publication_info.published_by=''

observatory.resource_header.funding.agency=''

observatory.resource_header.funding.project=''

observatory.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    observatory.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do observatory.resource_header.contact(contact_loop).role(role_loop)=''

    observatory.resource_header.contact(contact_loop).start_date=''

    observatory.resource_header.contact(contact_loop).stop_date=''

    observatory.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    observatory.resource_header.information_url(information_url_loop).name=''

    observatory.resource_header.information_url(information_url_loop).url=''

    observatory.resource_header.information_url(information_url_loop).description=''

    observatory.resource_header.information_url(information_url_loop).language=''

endfor

observatory.resource_header.association.association_id=''

observatory.resource_header.association.association_type=''

observatory.resource_header.association.note=''

for prior_id_loop=0,8 do observatory.resource_header.prior_id(prior_id_loop)=''

observatory.observatory_group_id=''

observatory.location.observatory_region=''

observatory.location.coordinate_system_name=''

observatory.location.latitude=''

observatory.location.longitude=''

observatory.location.elevation=''

observatory.operating_span.start_date=''

observatory.operating_span.stop_date=''

observatory.operating_span.note=''

observatory.extension=''

return,observatory

end

