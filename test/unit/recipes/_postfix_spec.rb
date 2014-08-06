require_relative "../spec_helper"

describe "ut_base::_postfix" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  it "includes the postfix recipe" do
    expect(chef_run).to include_recipe "postfix"
  end

  describe "for mac_os_x" do

    let(:platform)  { "mac_os_x" }
    let(:version)   { "10.9.2" }

    it "skips the postfix recipe" do
      expect(chef_run).to_not include_recipe "postfix"
    end
  end
end
