#!/bin/sh

# pre-commit.sh
#
# Copyright (c) 2017, ARM Limited, All Rights Reserved
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This file is part of Mbed TLS (https://tls.mbed.org)

# Purpose
#
# This script does quick sanity checks before commiting:
#   - check that generated files are up-to-date.
#
# It is meant to be called as a git pre-commit hook, see README.md.
#
# From the git sample pre-commit hook:
#   Called by "git commit" with no arguments.  The hook should
#   exit with non-zero status after issuing an appropriate message if
#   it wants to stop the commit.

set -eu

tests/scripts/check-generated-files.sh