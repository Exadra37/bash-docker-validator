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
# Functions
########################################################################################################################

    function Docker_Image_Does_Not_Exist()
    {
        local _docker_image_name="${1}"

        if Docker_Image_Exist "${_docker_image_name}"
            then
                # Image exist
                return 1
        fi

        # Image does not exist
        return 0
    }

    function Docker_Image_Exist()
    {
        local _docker_image_name="${1}"

        if [ -z $( sudo docker images -q "${_docker_image_name}" ) ]
            then
                # Image does not exist
                return 1
        fi

        # Image exist
        return 0
    }
