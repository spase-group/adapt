curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/SUISEI/datacite_json_doi_template_suisei_helio1day_position.json https://api.datacite.org/dois