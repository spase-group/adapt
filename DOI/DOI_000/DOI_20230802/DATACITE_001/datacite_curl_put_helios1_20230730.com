curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/HELIOS1/datacite_json_doi_template_helios1_40sec_mag-plasma.json https://api.datacite.org/dois