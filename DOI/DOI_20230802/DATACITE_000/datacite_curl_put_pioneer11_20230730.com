curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/PIONEER11/datacite_json_doi_template_pioneer11_coho1hr_merged_mag_plasma.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/PIONEER11/datacite_json_doi_template_pioneer11_helio1day_position.json https://api.datacite.org/dois