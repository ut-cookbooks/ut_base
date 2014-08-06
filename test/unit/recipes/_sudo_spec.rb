require_relative "../spec_helper"

describe "ut_base::_sudo" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  before do
    stub_command("which sudo")
  end

  describe "node attribute" do

    before { chef_run }

    it "groups set to admin and sudo" do
      expect(node["authorization"]["sudo"]["groups"].sort).to eq(%w[admin sudo])
    end

    describe "for centos platform" do

      let(:platform)  { "centos" }
      let(:version)   { "6.5" }

      it "groups set to wheel" do
        expect(node["authorization"]["sudo"]["groups"]).to eq(["wheel"])
      end
    end

    it "include_sudoers_d set to true" do
      expect(node["authorization"]["sudo"]["include_sudoers_d"]).to be_truthy
    end

    it "passwordless set to true" do
      expect(node["authorization"]["sudo"]["passwordless"]).to be_truthy
    end
  end

  it "includes the sudo recipe" do
    expect(chef_run).to include_recipe("sudo")
  end

  describe "for mac_os_x" do

    let(:platform)  { "mac_os_x" }
    let(:version)   { "10.9.2" }

    it "skips the sudo recipe" do
      expect(chef_run).to_not include_recipe "sudo"
    end
  end
end
