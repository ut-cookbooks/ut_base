# Unicorn Tears Base Chef Cookbook

[![Cookbook Version](http://img.shields.io/cookbook/v/ut_base.svg)](https://supermarket.chef.io/cookbooks/ut_base)
[![Build Status](http://img.shields.io/travis/ut-cookbooks/ut_base.svg)](https://travis-ci.org/ut-cookbooks/ut_base)

* Website: http://ut-cookbooks.github.io/ut_base/
* Supermarket: https://supermarket.chef.io/cookbooks/ut_base
* Source Code: https://github.com/ut-cookbooks/ut_base

A Chef cookbook for a Unicorn Tears baseline node. This could be a server,
virtual machine, or even a workstation--it's the most basic common set of
behavior we want when we manage a node.

This is a wrapper (or application) cookbook and is therefore good and
opinionated about application and configuration defaults. Feel free to try it,
fork and modify it, or just read and learn.

## Usage

Simply include `recipe[ut_base]` in your run-list.

## Requirements

* Chef 11 or higher

## Platform Support

This cookbook is tested on the following platforms with [Test Kitchen][test_kitchen]:

* CentOS 7.1 64-bit
* Debian 8.1 64-bit
* Mac OS X 10.9
* Mac OS X 10.10
* Ubuntu 12.04 64-bit
* Ubuntu 14.04 64-bit
* Ubuntu 15.04 64-bit

Unlisted platforms in the same family of similar or equivalent versions may
work without modification to this cookbook. Please [report][issues] any
additional platforms so they can be added.

## Cookbook Dependencies

This cookbook depends on the following external cookbooks:

* [apt](https://supermarket.chef.io/cookbooks/apt)
* [build-essential](https://supermarket.chef.io/cookbooks/build-essential)
* [chef-sugar](https://supermarket.chef.io/cookbooks/chef-sugar)
* [git](https://supermarket.chef.io/cookbooks/git)
* [homebrew](https://supermarket.chef.io/cookbooks/homebrew)
* [mosh](https://supermarket.chef.io/cookbooks/mosh)
* [openssh](https://supermarket.chef.io/cookbooks/openssh)
* [postfix](https://supermarket.chef.io/cookbooks/postfix)
* [sudo](https://supermarket.chef.io/cookbooks/sudo)
* [ubuntu](https://supermarket.chef.io/cookbooks/ubuntu)
* [xcode](https://supermarket.chef.io/cookbooks/xcode)
* [yum-epel](https://supermarket.chef.io/cookbooks/yum-epel)

## Recipes

### default

Main recipe which includes all internal recipes.

## Attributes

There are **no** attributes.

## Resources and Providers

There are **no** resources and providers.

## Development

* Source hosted at [GitHub][repo]
* Report issues/Questions/Feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make.

## License and Author

Author:: [Fletcher Nichol][fnichol] (<fnichol@nichol.ca>) [![endorse](http://api.coderwall.com/fnichol/endorsecount.png)](http://coderwall.com/fnichol)

Copyright 2013, Fletcher Nichol

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[test_kitchen]: http://kitchen.ci

[fnichol]:      https://github.com/fnichol
[repo]:         https://github.com/ut-cookbooks/ut_base
[issues]:       https://github.com/ut-cookbooks/ut_base/issues
