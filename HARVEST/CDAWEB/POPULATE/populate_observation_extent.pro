
function populate_observation_extent,spase_ontology,station_info,verbose=verbose

observation_extent=spase_model_create(spase_ontology,'observation_extent',verbose=verbose)

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

for observed_region_loop=0,14 do observation_extent.observed_region(observed_region_loop)=''

observation_extent.start_location=''

observation_extent.stop_location=''

observation_extent.note=''

return,observation_extent

end

