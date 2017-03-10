#!/bin/bash
#!/bin/bash
# @package exadra37-bash/docker-validator
# @link    https://gitlab.com/u/exadra37-bash/docker-validator
# @since   2017/03/08
# @license GPL-3.0
# @author  Exadra37(Paulo Silva) <exadra37ingmailpointcom>
#
# Social Links:
# @link    Auhthor:  https://exadra37.com
# @link    Github:   https://gitlab.com/Exadra37
# @link    Github:   https://github.com/Exadra37
# @link    Linkedin: https://uk.linkedin.com/in/exadra37
# @link    Twitter:  https://twitter.com/Exadra37

########################################################################################################################
# Sourcing
########################################################################################################################

    ebdv_src_dir=$(dirname $(readlink -f $0))

    source "${ebdv_src_dir}"/functions/validate-images.source.sh


########################################################################################################################
# Execution
########################################################################################################################

    ${@}
