#!/bin/bash

# SPDX-FileCopyrightText: 2024 Henrik Sandklef
#
# SPDX-License-Identifier: GPL-3.0-or-later

ld()
{
    PYTHONPATH=. ./licomp_gnuguide/__main__.py $*
    if [ $? -ne 0 ]
    then
        echo "failed: $*"
        exit 1
    fi
}

ld --help
ld --name
ld --version
ld supported-provisionings
ld supported-usecases
ld supported-licenses
ld verify -il MIT -ol BSD-3-Clause
