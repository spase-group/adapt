curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @LANL/JSON/LANL/datacite_json_doi_template_a1_k0_mpa.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @LANL/JSON/LANL/datacite_json_doi_template_a2_k0_mpa.json https://api.datacite.org/dois
