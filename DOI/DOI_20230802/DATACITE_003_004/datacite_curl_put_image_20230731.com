curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/IMAGE/datacite_json_doi_template_im_k0_euv.json https://api.datacite.org/dois
