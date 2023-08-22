curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/LANL/datacite_json_doi_template_l7_h0_mpa.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/LANL/datacite_json_doi_template_l9_h0_mpa.json https://api.datacite.org/dois
