curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/PIONEERVENUSORBITER/datacite_json_doi_template_pioneervenus_coho1hr_merged_mag_plasma.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/PIONEERVENUSORBITER/datacite_json_doi_template_pioneervenus_merged_solar-wind_10m.json https://api.datacite.org/dois