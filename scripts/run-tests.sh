#!/bin/bash

# (c) Wong Hoi Sing Edison <hswong3i@pantarei-design.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export ANSIBLE_FORCE_COLOR=true
export ANSIBLE_LOG_PATH="$PWD/ansible.log"
export ANSIBLE_ROLES_PATH="$HOME/.ansible/roles"
export MOLECULE_INSTANCE_NAME=${MOLECULE_INSTANCE_NAME:-"$(cat /dev/urandom | tr -dc a-z | head -c1)$(cat /dev/urandom | tr -dc a-z0-9 | head -c11)"}

exec "$@"
