require "chefspec"
require "chefspec/librarian"

RSpec.configure do |config|
  config.log_level = :fatal
end

ChefSpec.define_matcher :apt_repository

# turn off ChefSpec deprecations unless asked for
unless ENV["DEPRECATIONS"]
  module Kernel
    def deprecated(*_)
    end
  end
end
