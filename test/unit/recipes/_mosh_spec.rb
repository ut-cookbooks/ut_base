require_relative "../spec_helper"

describe "ut_base::_mosh" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  it "includes the mosh recipe" do
    expect(chef_run).to include_recipe "mosh"
  end

  describe "for centos platform" do

    let(:platform)  { "centos" }
    let(:version)   { "6.5" }

    before do
      original_exist = ::File.method(:exist?)
      allow(::File).to receive(:exist?) do |file|
        case file
        when "/usr/local/bin/mosh" then false
        else
          original_exist.call(file)
        end
      end
    end

    it "sets mosh install_type to source" do
      chef_run

      expect(node["mosh"]["install_type"]).to eq("source")
    end

    it "installs boost-devel" do
      expect(chef_run).to install_package("boost-devel")
    end

    it "installs protobuf-devel" do
      expect(chef_run).to install_package("protobuf-devel")
    end
  end
end
