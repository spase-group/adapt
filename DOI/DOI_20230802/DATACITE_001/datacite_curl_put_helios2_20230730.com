curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/HELIOS2/datacite_json_doi_template_helios2_40sec_mag-plasma.json https://api.datacite.org/dois