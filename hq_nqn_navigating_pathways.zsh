#!/usr/bin/zsh

# GIVEN Request made to move to folder
# WHEN No argument given
# THEN Existing path given

# GIVEN Request made to move to folder
# WHEN Argument '0' given
# THEN Home page path given

# GIVEN Request made to move to folder
# WHEN Argument '-' given
# THEN Parent page path given

# GIVEN Request made to move to folder
# WHEN Argument '=' given
# THEN Folder of Git project is given

# GIVEN Request made to move to folder
# WHEN Argument 'oq' given
# THEN Folder for program, scripts or tool is given

# GIVEN Request made to move to folder
# WHEN Argument 'rqr' given
# THEN Directory is created if the pathway does not exist

function hq {
}
function hq__rqr__nqn_navigate__otherwise-create__pathway {
    local nqn_iqi_pathway_current
    local nqn_hq_pathway_navigating
    local nqn_rqr_pathway_desired
    local iqi_states
    nqn_iqi_pathway_current=$PWD
    nqn_hq_pathway_navigating="$*"
    iqi_states=$(find ~/{1,2,3,4,5,6}q_*-*/*0_*/*/ -type d)
    # iqi_states=(1||2||3||4||5||6)q*
    # uqu_parsing=$iqi_states
    if [[ $nqn_hq_pathway_navigating = $iqi_states ]]
    # if [[ $nqn_hq_pathway_navigating = {1,2,3,4,5,6}q{1,2,3,4,5,6}* ]]
        then
            print $nqn_hq_pathway_navigating
        else
            print $nqn_iqi_pathway_current
            print $nqn_hq_pathway_navigating
            print $iqi_states
    fi
#     if [[ -d $nqn_pathway ]]
#         then
#             cd $nqn_pathway && k
#         else
#             mkdir -p $nqn_pathway
#             cd $nqn_pathway && k
#     fi
}

function hv {
    local msg
    msg="$*"
    vifm -c $msg
}
