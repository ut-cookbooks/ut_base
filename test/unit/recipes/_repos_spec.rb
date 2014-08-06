require_relative "../spec_helper"

describe "ut_base::_repos" do

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  describe "for ubuntu platform" do

    let(:platform)  { "ubuntu" }
    let(:version)   { "14.04" }

    it "includes the ubuntu recipe" do
      expect(chef_run).to include_recipe "ubuntu"
    end

    context "for version 12.04" do

      let(:version) { "12.04" }

      it "adds a tmux ppa repository for " do
        expect(chef_run).to add_apt_repository("tmux").with(
          :uri => "http://ppa.launchpad.net/kalakris/tmux/ubuntu",
          :distribution => "precise",
          :components => ["main"]
        )
      end
    end

    context "for version 14.04" do

      let(:version) { "14.04" }

      it "doesn't add a tmux ppa repository for " do
        expect(chef_run.apt_repository("tmux")).to do_nothing
      end
    end
  end

  describe "for debian platform" do

    let(:platform)  { "debian" }
    let(:version)   { "7.0" }

    it "includes the apt recipe" do
      expect(chef_run).to include_recipe "apt"
    end
  end

  describe "for centos platform" do

    let(:platform)  { "centos" }
    let(:version)   { "6.5" }

    it "includes the yum-epel recipe" do
      expect(chef_run).to include_recipe "yum-epel"
    end
  end
end
