require_relative "../spec_helper"

describe "ut_base::_ssh" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  it "includes the openssh recipe" do
    expect(chef_run).to include_recipe "openssh"
  end

  describe "node attribute" do

    before { chef_run }

    it "permit_root_login set to without-password" do
      expect(node["openssh"]["server"]["permit_root_login"]).to eq("without-password")
    end

    it "permit_empty_passwords set to no" do
      expect(node["openssh"]["server"]["permit_empty_passwords"]).to eq("no")
    end

    it "password_authentication set to no" do
      expect(node["openssh"]["server"]["password_authentication"]).to eq("no")
    end

    it "use_dns set to no" do
      expect(node["openssh"]["server"]["use_dns"]).to eq("no")
    end
  end

  describe "for mac_os_x" do

    let(:platform)  { "mac_os_x" }
    let(:version)   { "10.9.2" }

    it "skips the openssh recipe" do
      expect(chef_run).to_not include_recipe "openssh"
    end
  end
end
