require 'rails_helper'

RSpec.describe "acts/show", :type => :view do
  before(:each) do
    @act = assign(:act, Act.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
