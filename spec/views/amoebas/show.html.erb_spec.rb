require 'rails_helper'

RSpec.describe "amoebas/show", :type => :view do
  before(:each) do
    @amoeba = assign(:amoeba, Amoeba.create!(
      :name => "Name",
      :generation => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
