name             "ut_base"
maintainer       "Fletcher Nichol"
maintainer_email "fnichol@nichol.ca"
license          "Apache 2.0"
description      "Unicorn Tears Base"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.6"

supports "ubuntu"
supports "debian"
supports "centos"
supports "mac_os_x"

# please see Berksfile for any special/specific versions for forks
depends "apt",              '~> 2.0.0'
depends "build-essential",  '~> 1.4.0'
depends "git",              '~> 2.5.2'
depends "homebrew"          # forked version
depends "mosh",             '~> 0.3.0'
depends "openssh",          '~> 1.2.0'
depends "postfix",          '~> 2.1.6'
depends "sudo",             '~> 2.1.4'
depends "yum",              '~> 2.3.0'
