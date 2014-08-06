#
# Cookbook Name:: ut_base
# Recipe:: default
#
# Copyright 2013, 2014, Fletcher Nichol
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

include_recipe "chef-sugar"
include_recipe "ut_base::_repos"
include_recipe "ut_base::_ssh"
include_recipe "ut_base::_compiler"
include_recipe "ut_base::_mosh"
include_recipe "ut_base::_git"
include_recipe "ut_base::_packages"
include_recipe "ut_base::_postfix"
include_recipe "ut_base::_sudo"
