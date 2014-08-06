#
# Cookbook Name:: ut_base
# Recipe:: _sudo
#
# Copyright 2013, Fletcher Nichol
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
#

# bail out if we're on a mac
return if platform_family?("mac_os_x")

node.set["authorization"]["sudo"]["groups"] = value_for_platform_family(
  %w[rhel fedora] => %w[wheel],
  "default"       => %w[admin sudo]
)

node.set["authorization"]["sudo"]["include_sudoers_d"]  = true
node.set["authorization"]["sudo"]["passwordless"]       = true

include_recipe "sudo"
