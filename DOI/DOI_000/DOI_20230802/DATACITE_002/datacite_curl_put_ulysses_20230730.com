curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/ULYSSES/datacite_json_doi_template_uy_m0_at1 uy_m0_at2.json https://api.datacite.org/dois