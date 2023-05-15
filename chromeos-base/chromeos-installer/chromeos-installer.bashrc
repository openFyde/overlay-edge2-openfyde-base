# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

unset -f cros_pre_src_prepare_openfyde_patches

cros_post_src_install_edge2_openfyde_flash_spi() {
  exeinto /usr/sbin
  doexe ${EDGE2_OPENFYDE_BASE_BASHRC_FILEPATH}/flash_spi.sh
}

cros_pre_src_prepare_edge2_openfyde_patches() {
  epatch ${EDGE2_OPENFYDE_BASE_BASHRC_FILEPATH}/install.patch
  epatch ${EDGE2_OPENFYDE_BASE_BASHRC_FILEPATH}/postinst.patch
}
