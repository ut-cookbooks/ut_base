#
# Cookbook Name:: ut_base
# Recipe:: _compiler
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

if platform_family?("mac_os_x")
  version = Gem::Version.new(node["platform_version"]).segments[0, 2].join(".")
  key = "mac_os_x-#{version}"
  distro = node["ut_base"]["xcode"][key]
  raise %{You must set node["ut_base"]["xcode"]["#{key}"]} if distro.nil?

  node.set["xcode"]["url"] = distro["url"]
  node.set["xcode"]["cli"]["url"] = distro["cli_url"]

  if distro["checksum"]
    node.set["xcode"]["checksum"] = distro["checksum"]
  end
  if distro["cli_checksum"]
    node.set["xcode"]["cli"]["checksum"] = distro["cli_checksum"]
  end
  if distro["last_gm_license"]
    node.set["xcode"]["last_gm_license"] = distro["last_gm_license"]
  end
  if distro["version"]
    node.set["xcode"]["version"] = distro["version"]
  end

  include_recipe "xcode"

  include_recipe "homebrew"
else
  include_recipe "build-essential"
end
