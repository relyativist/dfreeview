#! /bin/bash

echo "Setting the environment ..."
source $FREESURFER_HOME/SetUpFreeSurfer.sh
#export SUBJECTS_DIR=/output

echo "Run x server to run GUI"



# while [ "$subj_path" != 0 ]
# do  
#     subj_path=0
#     cd /input && subj_path="$(zenity  --file-selection --title="Choose a directory" --directory)"
#     freeview -v $subj_path/mri/T1.mgz -f \
#         $subj_path/surf/lh.inflated:overlay=lh.thickness:overlay_threshold=1,6.5:overlay_color='colorwheel','inverse'::name=lh_thickness \
#         $subj_path/surf/rh.inflated:overlay=rh.thickness:overlay_threshold=1,6.5:overlay_color='colorwheel','inverse'::name=rh_thickness \
#         $subj_path/surf/rh.white:edgethickness=1:hide_in_3d='true' \
#         $subj_path/surf/rh.pial:edgethickness=1:hide_in_3d='true' \
#         $subj_path/surf/lh.white:edgethickness=1:hide_in_3d='true' \
#         $subj_path/surf/lh.pial:edgethickness=1:hide_in_3d='true' \
#         --hide-3d-slices  --viewport 3d  -layout 4
# done





#freeview -f  good_output/surf/lh.pial:annot=aparc.annot:name=pial_aparc:visible=0 \
#good_output/surf/lh.inflated:overlay=lh.thickness:overlay_threshold=0.1,3::name=inflated_thickness:visible=0 \
#good_output/surf/lh.inflated:visible=0 \
#good_output/surf/lh.white:visible=0 \
#good_output/surf/lh.pial \
#--viewport 3d


