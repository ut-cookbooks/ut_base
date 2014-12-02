require "chefspec"
require "chefspec/librarian"

RSpec.configure do |config|
  config.log_level = :fatal
end

ChefSpec.define_matcher :apt_repository
