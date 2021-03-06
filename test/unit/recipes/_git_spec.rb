require_relative "../spec_helper"

describe "ut_base::_git" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  it "includes the git recipe" do
    expect(chef_run).to include_recipe "git"
  end
end
