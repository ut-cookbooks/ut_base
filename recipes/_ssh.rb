#
# Cookbook Name:: ut_base
# Recipe:: _ssh
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

node.set["openssh"]["server"]["permit_root_login"]        = "without-password"
node.set["openssh"]["server"]["permit_empty_passwords"]   = "no"
node.set["openssh"]["server"]["password_authentication"]  = "no"
node.set["openssh"]["server"]["use_dns"]                  = "no"

include_recipe "openssh"
