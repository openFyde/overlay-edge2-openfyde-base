edge2_openfyde_base_stack_bashrc() {
  local cfg 

  cfgd="/mnt/host/source/src/overlays/overlay-edge2-openfyde-base/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export EDGE2_OPENFYDE_BASE_BASHRC_FILEPATH="${cfgd}/files"
}

edge2_openfyde_base_stack_bashrc
