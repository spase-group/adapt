curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fast_hr_dcb.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fa_esa_l2_eeb.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fa_esa_l2_ees.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fa_esa_l2_ieb.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fa_esa_l2_ies.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fa_k0_acf.json https://api.datacite.org/dois
curl -ksSX POST -H 'Content-Type: application/vnd.api+json' -u 'heliophy.spdf:Tranquillity$Base&Eagle' -d @DATACITE/JSON/FAST/datacite_json_doi_template_fa_k0_tms.json https://api.datacite.org/dois