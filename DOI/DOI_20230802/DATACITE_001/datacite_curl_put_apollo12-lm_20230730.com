curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/APOLLO12-LM/datacite_json_doi_template_apollo12_sws_1hr.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/APOLLO12-LM/datacite_json_doi_template_apollo12_sws_28s.json https://api.datacite.org/dois