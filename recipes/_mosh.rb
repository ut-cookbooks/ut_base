#
# Cookbook Name:: ut_base
# Recipe:: _mosh
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

if platform_family?("rhel")
  # current mosh source build on rhel isn't totally idempopent, so let's
  # bail if mosh is already installed
  return if ::File.exist?("/usr/local/bin/mosh")

  node.set["mosh"]["install_type"] = "source"

  package "boost-devel"
  package "protobuf-devel"
  package "zlib-devel"
  package "libutempter-devel"
  package "ncurses-devel"
  package "tar"
end

include_recipe "mosh"
