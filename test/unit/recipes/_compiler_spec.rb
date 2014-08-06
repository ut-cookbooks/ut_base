require_relative "../spec_helper"

describe "ut_base::_compiler" do

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  describe "for mac_os_x" do

    let(:platform)  { "mac_os_x" }
    let(:version)   { "10.9.2" }

    before do
      node.set["ut_base"]["xcode"]["mac_os_x-10.9"]["url"] = "niner"
      node.set["ut_base"]["xcode"]["mac_os_x-10.9"]["cli_url"] = "niner_cli"

      stub_command("which git")
    end

    it "dies if mac/version key is not set" do
      node.set["ut_base"]["xcode"]["mac_os_x-10.9"] = nil

      expect { chef_run }.to raise_error
    end

    it "include the xcode recipe" do
      expect(chef_run).to include_recipe("xcode")
    end

    it "include the homebrew recipe" do
      expect(chef_run).to include_recipe("homebrew")
    end

    it "adds homebrew/dupes tap" do
      expect(chef_run).to tap_homebrew_tap("homebrew/dupes")
    end

    it "installs apple-gcc42 homebrew package" do
      expect(chef_run).to install_package("apple-gcc42")
    end
  end

  describe "for non-mac platforms" do

    let(:platform)  { "ubuntu" }
    let(:version)   { "14.04" }

    it "include the build-essential recipe" do
      expect(chef_run).to include_recipe "build-essential"
    end
  end
end