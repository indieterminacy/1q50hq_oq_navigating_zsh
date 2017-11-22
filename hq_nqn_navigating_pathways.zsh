#!/usr/bin/zsh

# Legacy Code
# TODO Use or lose
    # print ${iqi_states}
    # print -l ${iqi_states} | \
    # print ${iqi_states:#~/**/*.git/*}
    # print -l ${iqi_states} | gawk -v x=git -f yqy_processing.awk

function hq_moving {
    zparseopts -D -A opthash -- v
    local verbose
    verbose=false
    if [[ -n "${opthash[(i)-v]}" ]]
        then
            verbose=true
    fi

    # iqi_states
    if [[ -f $iqi_iqi_states_current ]]
        then
            if $verbose
                then
                    echo ""
                    echo "################################"
                    echo "INFO: Initiating iqi_iqi_states_current"
                    echo "################################"
                    echo "iqi_iqi_states_current value: " $iqi_iqi_states_current
                    source $iqi_iqi_states_current
            fi
        else
            if $verbose
                then
                    echo ""
                    echo "################################"
                    echo "WARNING: Directory pathway absent"
                    echo "################################"
                    echo "iqi_nqn_states_pathway value: " $iqi_nqn_states_pathway
                    echo "################################"
                    echo "INFO: Searching for pathway with different qiuy root pathway"
                    echo "INFO: Output about to be piped to FZF"
                    echo "################################"
            fi
            local alternative_pathway
            alternative_pathway=$(print -l $iqi_nqn_states_pathway | gawk '
            {
                print gensub( \
                    /^\/home\/[a-z0-9]*\/([1-6]q_[a-z]*.qiuy)\/([1-6]0_[A-Z][a-z]*)\/(.*)/, \
                    "\\3", \
                    "g" \
                )
            }
            ')
            find ~/*/*/$altertive_pathway -type d | fzf
    fi

    #######################
    # iqi_inputting
    #######################
    local uq_nqn_search_pathway
    uq_nqn_search_pathway=(uq_iqi_searching_)

    #######################
    # iqi_outputting
    #######################
    local uq_jq_search_query
    local iqi_kq_output_filetype
    local iqi_output
    iqi_kq_output_filetype=logs
    #######################
    uq_jq_search_query=$iqi_nqn_input_pathway/$iqi_nqn_search_pathway$iqi_oq/$iqi_logs.$iqi
    iqi_output=($iqi_nqn_output_pathway/$iqi_nqn_output_path.$iqi_kq_output_filetype)
    if $verbose
        then
            echo ""
            echo "################################"
            echo "INFO: Printing output pathway"
            echo "################################"
            echo "Output pathway value: " $iqi_output
    fi

    # uqu_parsing
    if [[ -f $iqi_nqn_input_pathway/$uq_nqn_search_pathway$iqi_oq.logs ]]
        then
            if $verbose
                then
                    echo ""
                    echo "################################"
                    echo "INFO: File found"
                    echo "INFO: Printing Contexts"
                    echo "################################"
                    echo "iqi_nqn_input_pathway value: " $iqi_nqn_input_pathway
                    echo "uq_nqn_search_pathway value: " $uq_nqn_search_pathway
                    echo "iqi_oq value: " $iqi_oq
                    echo "nqn_iqi_pathway_logs value: " $iqi_nqn_input_pathway/$uq_nqn_search_pathway$iqi_oq.logs
            fi
            cat $iqi_nqn_input_pathway/$uq_nqn_search_pathway$iqi_oq.logs | nohup gawk '
            {
                if ($0 !~ /.git/ ) {
                    print gensub( \
                        /^\/home\/[a-z0-9]*\/([1-6]q)_[a-z]*.qiuy\/([1-6]0)_[A-Z][a-z]*\/([a-z]q[a-z]?_[a-z][a-z\-\_]*)\/(.*)/, \
                        "\\1\\2\\3 | \\4", \
                        "g" \
                    )
                }
            }
            ' > $iqi_output &
        else
            if $verbose
                then
                    echo ""
                    echo "################################"
                    echo "WARNING: Somethings up"
                    echo "################################"
                    echo "iqi_nqn_input_pathway value: " $iqi_nqn_input_pathway
                    echo "uq_nqn_Search_pathway value: " $uq_nqn_search_pathway
                    echo "iqi_oq value: " $iqi_oq
            fi
            local alternative_pathway
            alternative_pathway=$(print -l $iqi_nqn_input_pathway | gawk '
            {
                print gensub( \
                    /^\/home\/[a-z0-9]*\/([1-6]q_[a-z]*.qiuy)\/([1-6]0_[A-Z][a-z]*)\/(.*)/, \
                    "\\3", \
                    "g" \
                )
            }
            ')
            find ~/*/*/$altertive_pathway -type d | fzf
    fi

}
    # awk '{ if ($0 !~ /\.git/) print }' | \
        # gawk ' if match($0, /^\/home\/[a-z0-9]*\/([1-6]q)_[a-z]*.qiuy\/([1-6]0)_[A-Z][a-z]*\/.*/, a) print a[1] a[2] a[3] '
    # if [[ $nqn_hq_pathway_navigating = $iqi_states ]]

#     if [[ -d $nqn_pathway ]]
#         then
#             cd $nqn_pathway && k
#         else
#             mkdir -p $nqn_pathway
#             cd $nqn_pathway && k
#     fi

# function hv {
#     local msg
#     msg="$*"
#     vifm -c $msg
# }

