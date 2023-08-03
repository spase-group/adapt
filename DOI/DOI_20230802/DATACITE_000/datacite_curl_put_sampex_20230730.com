curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/SAMPEX/datacite_json_doi_template_sx_k0_pof.json https://api.datacite.org/dois
