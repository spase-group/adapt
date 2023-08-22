curl -sSX POST -H 'Content-Type: application/vnd.api+json' -u 'testorg.heliophy:6yard$TACK27' -d @TEST_DATACITE/JSON/ACE/datacite_json_doi_template_ac_h2_swi.json https://api.test.datacite.org/dois
curl -sSX POST -H 'Content-Type: application/vnd.api+json' -u 'testorg.heliophy:6yard$TACK27' -d @TEST_DATACITE/JSON/ACE/datacite_json_doi_template_ac_h3_sw2.json https://api.test.datacite.org/dois
curl -sSX POST -H 'Content-Type: application/vnd.api+json' -u 'testorg.heliophy:6yard$TACK27' -d @TEST_DATACITE/JSON/ACE/datacite_json_doi_template_ac_h3_swi.json https://api.test.datacite.org/dois
curl -sSX POST -H 'Content-Type: application/vnd.api+json' -u 'testorg.heliophy:6yard$TACK27' -d @TEST_DATACITE/JSON/ACE/datacite_json_doi_template_ac_h4_swi.json https://api.test.datacite.org/dois
curl -sSX POST -H 'Content-Type: application/vnd.api+json' -u 'testorg.heliophy:6yard$TACK27' -d @TEST_DATACITE/JSON/ACE/datacite_json_doi_template_ac_h5_swi.json https://api.test.datacite.org/dois
curl -sSX POST -H 'Content-Type: application/vnd.api+json' -u 'testorg.heliophy:6yard$TACK27' -d @TEST_DATACITE/JSON/ACE/datacite_json_doi_template_ac_h6_swi.json https://api.test.datacite.org/dois
