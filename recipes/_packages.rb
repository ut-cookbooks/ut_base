#
# Cookbook Name:: ut_base
# Recipe:: _packages
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

if platform_family?("debian")
  %w[htop ntp psmisc screen unzip vim].each { |pkg| package(pkg) }
elsif platform_family?("mac_os_x")
  %w[htop-osx pstree].each { |pkg| package(pkg) }
end

%w[gawk curl mg tmux tree wget].each { |pkg| package(pkg) }
