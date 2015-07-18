name             "ut_base"
maintainer       "Fletcher Nichol"
maintainer_email "fnichol@nichol.ca"
license          "Apache 2.0"
description      "Unicorn Tears Base"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.6.1"

supports "ubuntu"
supports "debian"
supports "centos"
supports "mac_os_x"

# please see Cheffile for any special/specific versions for forks
depends "apt",              "~> 2.0"
depends "build-essential",  "~> 2.0"
depends "chef-sugar",       "~> 3.0"
depends "git"               # pending release
depends "homebrew",         "~> 1.4"
depends "mosh",             "~> 0.3"
depends "openssh",          "~> 1.2"
depends "postfix",          "~> 3.0"
depends "sudo",             "~> 2.1"
depends "ubuntu",           "~> 1.1"
depends "xcode"             # pending release
depends "yum-epel",         "~> 0.2"
