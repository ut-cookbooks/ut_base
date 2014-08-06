require_relative "../spec_helper"

describe "ut_base::default" do

  let(:platform)  { "ubuntu" }
  let(:version)   { "14.04" }

  let(:runner) do
    ChefSpec::Runner.new(:platform => platform, :version => version)
  end

  let(:node)      { runner.node}
  let(:chef_run)  { runner.converge(described_recipe) }

  before do
    stub_command("which sudo")
  end

  it "includes the chef-sugar recipe" do
    expect(chef_run).to include_recipe "chef-sugar"
  end

  %w[_repos _ssh _compiler _mosh _git _packages _postfix _sudo].each do |recipe|
    it "includes the #{recipe} recipe" do
      expect(chef_run).to include_recipe "ut_base::#{recipe}"
    end
  end
end
