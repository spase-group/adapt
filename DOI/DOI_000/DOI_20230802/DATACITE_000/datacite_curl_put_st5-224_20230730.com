curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/ST5-224/datacite_json_doi_template_st5-224_1sec_mag st5c.json https://api.datacite.org/dois