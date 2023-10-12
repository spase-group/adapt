
function populate_simulation_time,spase_ontology,station_info,verbose=verbose

simulation_time=spase_model_create(spase_ontology,'simulation_time',verbose=verbose)

simulation_time.description=''

simulation_time.caveats=''

simulation_time.duration=''

simulation_time.time_start=''

simulation_time.time_stop=''

simulation_time.time_step=''

simulation_time.diagnosis_time_step.time_start=''

simulation_time.diagnosis_time_step.duration=''

simulation_time.diagnosis_time_step.saved_quantity=''

return,simulation_time

end

