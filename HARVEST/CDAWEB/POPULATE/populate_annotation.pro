
function populate_annotation,spase_ontology,station_info,verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date

annotation=spase_model_create(spase_ontology,'annotation',verbose=verbose,keyword_relative_stop_date=keyword_relative_stop_date,keyword_stop_date=keyword_stop_date)

;
;-------------------------------------------------------------------------------
;
;  ANNOTATION List Num:                             7
;
;-------------------------------------------------------------------------------
;

annotation_type_list=['','Anomaly','Event','Feature']

association_type_list= $
   ['','ChildEventOf','DerivedFrom','ObservedBy','Other','PartOf','RevisionOf']

classification_method_list=['','Automatic','Inferred','Inspection']

confidence_rating_list=['','Probable','Strong','Unlikely','Weak']

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

phenomenon_type_list= $
   ['','ActiveRegion','Aurora','BowShockCrossing','CoronalHole', $
    'CoronalMassEjection','EITWave','EnergeticSolarParticleEvent', $
    'ForbushDecrease','GeomagneticStorm','InterplanetaryShock', $
    'MagneticCloud','MagnetopauseCrossing','RadioBurst', $
    'SectorBoundaryCrossing','SolarFlare','SolarWindExtreme', $
    'StreamInteractionRegion','Substorm']

role_list= $
   ['','ArchiveSpecialist','CoInvestigator','Contributor','CoPI', $
    'DataProducer','DeputyPI','Developer','FormerPI','GeneralContact', $
    'HostContact','InstrumentLead','MetadataContact','MissionManager', $
    'MissionPrincipalInvestigator','PrincipalInvestigator','ProgramManager', $
    'ProgramScientist','ProjectEngineer','ProjectManager','ProjectScientist', $
    'Publisher','Scientist','TeamLeader','TeamMember','TechnicalContact', $
    'User']

annotation.resource_id=''

annotation.resource_header.resource_name=''

annotation.resource_header.alternate_name=''

annotation.resource_header.doi=''

annotation.resource_header.release_date=''

for revision_history_loop=0,14 do begin

    annotation.resource_header.revision_history(revision_history_loop).revision_event.release_date=''

    annotation.resource_header.revision_history(revision_history_loop).revision_event.note=''

endfor

annotation.resource_header.expiration_date=''

annotation.resource_header.description=''

annotation.resource_header.acknowledgement=''

annotation.resource_header.publication_info.authors=''

annotation.resource_header.publication_info.publication_date=''

annotation.resource_header.publication_info.published_by=''

annotation.resource_header.funding.agency=''

annotation.resource_header.funding.project=''

annotation.resource_header.funding.award_number=''

for contact_loop=0,14 do begin

    annotation.resource_header.contact(contact_loop).person_id=''

    for role_loop=0,4 do annotation.resource_header.contact(contact_loop).role(role_loop)=''

    annotation.resource_header.contact(contact_loop).start_date=''

    annotation.resource_header.contact(contact_loop).stop_date=''

    annotation.resource_header.contact(contact_loop).note=''

endfor

for information_url_loop=0,14 do begin

    annotation.resource_header.information_url(information_url_loop).name=''

    annotation.resource_header.information_url(information_url_loop).url=''

    annotation.resource_header.information_url(information_url_loop).description=''

    annotation.resource_header.information_url(information_url_loop).language=''

endfor

annotation.resource_header.association.association_id=''

annotation.resource_header.association.association_type=''

annotation.resource_header.association.note=''

for prior_id_loop=0,8 do annotation.resource_header.prior_id(prior_id_loop)=''

annotation.image_url=''

annotation.annotation_type=''

for phenomenon_type_loop=0,4 do annotation.phenomenon_type(phenomenon_type_loop)=''

annotation.classification_method=''

annotation.confidence_rating=''

annotation.time_span.start_date=''

if keyword_set(keyword_stop_date) then annotation.time_span.stop_date=''

if keyword_set(keyword_relative_stop_date) then annotation.time_span.relative_stop_date=''

annotation.time_span.note=''

for observed_region_loop=0,14 do annotation.observation_extent.observed_region(observed_region_loop)=''

annotation.observation_extent.start_location=''

annotation.observation_extent.stop_location=''

annotation.observation_extent.note=''

annotation.extension=''

return,annotation

end

