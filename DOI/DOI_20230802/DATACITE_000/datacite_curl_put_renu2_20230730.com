curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_efield.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_eplas.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_erpamain.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_erpasub.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_fgm.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_ig2.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_pmt.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_uvpmt.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/RENU2/datacite_json_doi_template_renu2_h0_vlf.json https://api.datacite.org/dois