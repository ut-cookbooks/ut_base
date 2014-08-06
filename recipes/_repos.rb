#
# Cookbook Name:: ut_base
# Recipe:: _repos
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

include_recipe "chef-sugar"

if platform_family?("debian")
  if platform?("ubuntu")
    include_recipe "ubuntu"

    apt_repository "tmux" do
      uri "http://ppa.launchpad.net/kalakris/tmux/ubuntu"
      distribution node["lsb"]["codename"]
      components ["main"]
      keyserver "keyserver.ubuntu.com"
      key "63844AC3"
      only_if { ubuntu_precise? }
    end
  else
    include_recipe "apt"
  end
elsif platform_family?("rhel", "fedora")
  include_recipe "yum-epel"
end
