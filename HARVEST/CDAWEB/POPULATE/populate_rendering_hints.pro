
function populate_rendering_hints,spase_ontology,station_info,verbose=verbose

rendering_hints=spase_model_create(spase_ontology,'rendering_hints',verbose=verbose)

;
;-------------------------------------------------------------------------------
;
;  RENDERING_HINTS List Num:                        3
;
;-------------------------------------------------------------------------------
;

display_type_list= $
   ['','Image','Plasmagram','Spectrogram','StackPlot','TimeSeries','WaveForm']

rendering_axis_list=['','ColorBar','Horizontal','Vertical']

scale_type_list=['','LinearScale','LogScale']

rendering_hints.display_type=''

rendering_hints.axis_label=''

rendering_hints.rendering_axis=''

rendering_hints.index=''

rendering_hints.value_format=''

rendering_hints.scale_min=''

rendering_hints.scale_max=''

rendering_hints.scale_type=''

return,rendering_hints

end

