cat numerical_data_parameter_all_full.tab | grep -v '	psp_fld_l2_dfb_dbm_dvdc	' | grep -v '	psp_fld_l2_dfb_dbm_scm	' | grep -v '	psp_fld_l2_dfb_dbm_vac	' | grep -v '	psp_fld_l2_dfb_dbm_vdc	' | grep -v '	psp_fld_l2_dfb_wf_dvdc	' | grep -v '	psp_fld_l2_dfb_wf_scm	' | grep -v '	psp_fld_l2_f2_100bps	' | grep -v '	psp_fld_l2_mag_vso	' | grep -v '	psp_fld_l2_rfs_burst	' | grep -v '	psp_fld_l3_merged_scam_wf	' | grep -v '	psp_isois-epihi_l2-het-rates10	' | grep -v '	psp_isois-epihi_l2-het-rates60	' | grep -v '	psp_isois-epihi_l2-het-rates300	' | grep -v '	psp_isois-epihi_l2-het-rates3600	' | grep -v '	psp_isois-epihi_l2-let1-rates10	' | grep -v '	psp_isois-epihi_l2-let1-rates60	' | grep -v '	psp_isois-epihi_l2-let1-rates300	' | grep -v '	psp_isois-epihi_l2-let1-rates3600	' | grep -v '	psp_isois-epihi_l2-let2-rates10	' | grep -v '	psp_isois-epihi_l2-let2-rates60	' | grep -v '	psp_isois-epihi_l2-let2-rates300	' | grep -v '	psp_isois-epihi_l2-let2-rates3600	' | grep -v '	psp_isois-epihi_l2-second-rates	' | grep -v '	psp_isois-epilo_l2-ic	' | grep -v '	psp_isois-epilo_l2-pe	' | grep -v '	psp_isois_l2-summary	' | grep -v '	psp_swp_spa_sf0_l3_pad	' | grep -v '	psp_swp_spb_sf0_l3_pad	' | grep -v '	psp_swp_spe_sf0_l3_pad	' | grep -v '	psp_swp_spi_sf0a_l3_mom_inst	' | grep -v '	psp_swp_spi_sf00_l3_mom_inst	' &> numerical_data_parameter_all_full.txt