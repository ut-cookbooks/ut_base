# <a name="title"></a> Unicorn Tears Base Chef Cookbook

[![Cookbook Version](http://img.shields.io/cookbook/v/ut_base.svg)](https://supermarket.getchef.com/cookbooks/ut_base)
[![Build Status](http://img.shields.io/travis/ut-cookbooks/ut_base.svg)](https://travis-ci.org/ut-cookbooks/ut_base)

## <a name="description"></a> Description

Chef cookbook for a Unicorn Tears baseline node.

* Website: http://ut-cookbooks.github.io/ut_base/
* Supermarket: https://supermarket.getchef.com/cookbooks/ut_base
* Source Code: https://github.com/ut-cookbooks/ut_base

This is a wrapper (or application) cookbook and is therefore good and
opinionated about application and configuration defaults. Feel free to try it,
fork and modify it, or just read and learn.

## <a name="usage"></a> Usage

Simply include `recipe[ut_base]` in your run\_list.

## <a name="requirements"></a> Requirements

### <a name="requirements-chef"></a> Chef

Tested on 11.14.2 but newer and older version should work just fine.
File an [issue][issues] if this isn"t the case.

### <a name="requirements-platform"></a> Platform

The following platforms have been tested with this cookbook, meaning that the
recipes run on these platforms without error:

* ubuntu
* debian
* mac\_os\_x
* centos

Please [report][issues] any additional platforms so they can be added.

### <a name="requirements-cookbooks"></a> Cookbooks

This cookbook depends on the following external cookbooks:

* [apt][apt_cb]
* [build-essential][build_essential_cb]
* [chef-sugar][chef_sugar_cb]
* [git][git_cb]
* [homebrew][homebrew_cb]
* [mosh][mosh_cb]
* [openssh][openssh_cb]
* [postfix][postfix_cb]
* [sudo][sudo_cb]
* [ubuntu][ubuntu_cb]
* [xcode][xcode_cb]
* [yum-epel][yum_epel_cb]

## <a name="recipes"></a> Recipes

### <a name="recipes-default"></a> default

Main recipe which includes all internal recipes.

## <a name="attributes"></a> Attributes

There are **no** attributes.

## <a name="lwrps"></a> Resources and Providers

There are **no** resources and providers.

## <a name="development"></a> Development

* Source hosted at [GitHub][repo]
* Report issues/Questions/Feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make.

## <a name="license"></a> License and Author

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

[apt_cb]:         https://supermarket.getchef.com/cookbooks/apt
[build_essential_cb]: https://supermarket.getchef.com/cookbooks/build-essential
[chef_sugar_cb]:  https://supermarket.getchef.com/cookbooks/chef-sugar
[git_cb]:         https://supermarket.getchef.com/cookbooks/git
[homebrew_cb]:    https://supermarket.getchef.com/cookbooks/homebrew
[mosh_cb]:        https://supermarket.getchef.com/cookbooks/mosh
[openssh_cb]:     https://supermarket.getchef.com/cookbooks/openssh
[postfix_cb]:     https://supermarket.getchef.com/cookbooks/postfix
[sudo_cb]:        https://supermarket.getchef.com/cookbooks/sudo
[ubuntu_cb]:      https://supermarket.getchef.com/cookbooks/ubuntu
[xcode_cb]:       https://supermarket.getchef.com/cookbooks/xcode
[yum_epel_cb]:    https://supermarket.getchef.com/cookbooks/yum-epel

[fnichol]:      https://github.com/fnichol
[repo]:         https://github.com/ut-cookbooks/ut_base
[issues]:       https://github.com/ut-cookbooks/ut_base/issues
