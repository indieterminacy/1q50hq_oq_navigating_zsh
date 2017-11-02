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

# hq_movement
# function hq {
# }
function hq_movement {
    typeset -A context
    typeset -A contenttype
    context[python]=oq_python
    contenttype[python]=py
    # local nqn_iqi_pathway_current
    # local nqn_hq_pathway_navigating
    # local nqn_rqr_pathway_desired
    local iqi_states
    # nqn_iqi_pathway_current=$PWD
    # nqn_hq_pathway_navigating="$*"
    # local iqi_context
    # iqi_context=print $states[iqi]
    # local program
    local pathway
    pathway=$context[$iqi_oq]
    local filetype
    filetype=$contenttype[$iqi_oq]
    #
    # nohup find $iqi_iqi -regextype posix-egrep -iregex ".*\/$pathway\/.*|\.$filetype$)" > hq_movement.logs &
    iqi_states=$(find $iqi_iqi -regextype posix-egrep -iregex ".*\/$pathway\/.*|\.$filetype$)")
    # iqi_states=$(find $iqi_iqi -regextype posix-egrep -iregex ".*\/(oq_python.*\/[^\.].*|\.py$)" ! -path "*/.git/*")
    # local uqu_exclusion
    # uqu_exclusion=.git
    # print ${iqi_states}
    # print -l ${iqi_states} | \
    # print ${iqi_states:#~/**/*.git/*}
    print -l $iqi_states | nohup gawk '
    {
        if ($0 !~ /.git/ ) {
            print gensub( \
                /^\/home\/[a-z0-9]*\/([1-6]q)_[a-z]*.qiuy\/([1-6]0)_[A-Z][a-z]*\/([a-z]q[a-z]?_[a-z][a-z\-\_]*)\/(.*)/, \
                "\\1\\2\\3 | \\4", \
                "g" \
            )
        }
    }
    ' > hq_movement.logs &
    # print -l ${iqi_states} | gawk -v x=git -f yqy_processing.awk
    # awk '{ if ($0 !~ /\.git/) print }' | \
        # gawk ' if match($0, /^\/home\/[a-z0-9]*\/([1-6]q)_[a-z]*.qiuy\/([1-6]0)_[A-Z][a-z]*\/.*/, a) print a[1] a[2] a[3] '
    # iqi_states=(1||2||3||4||5||6)q*
    # uqu_parsing=$iqi_states
    # if [[ $nqn_hq_pathway_navigating = $iqi_states ]]
    # # if [[ $nqn_hq_pathway_navigating = {1,2,3,4,5,6}q{1,2,3,4,5,6}* ]]
    #     then
    #         print $nqn_hq_pathway_navigating
    #     else
    #         print $nqn_iqi_pathway_current
    #         print $nqn_hq_pathway_navigating
    #         print $iqi_states
    # fi
#     if [[ -d $nqn_pathway ]]
#         then
#             cd $nqn_pathway && k
#         else
#             mkdir -p $nqn_pathway
#             cd $nqn_pathway && k
#     fi
}
#
# function hv {
#     local msg
#     msg="$*"
#     vifm -c $msg
# }
