curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/STEREO-B/datacite_json_doi_template_stb_l1_swea_disb.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/STEREO-B/datacite_json_doi_template_stb_l1_swea_dist.json https://api.datacite.org/dois