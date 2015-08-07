require_relative "../spec_helper"

describe "ut_base::_packages" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  %w[gawk curl mg tmux tree wget].each do |pkg|
    it "installs the #{pkg} package" do
      expect(chef_run).to install_package(pkg)
    end
  end

  describe "for mac_os_x platform" do

    let(:platform)  { "mac_os_x" }
    let(:version)   { "10.9.2" }

    it "installs the pstree package" do
      expect(chef_run).to install_package("pstree")
    end

    it "installs the htop-osx package" do
      expect(chef_run).to install_package("htop-osx")
    end
  end

  describe "for ubuntu platform" do

    let(:platform)  { "ubuntu" }
    let(:version)   { "14.04" }

    %w[htop ntp psmisc screen unzip vim].each do |pkg|
      it "installs the #{pkg} package" do
        expect(chef_run).to install_package(pkg)
      end
    end
  end
end
