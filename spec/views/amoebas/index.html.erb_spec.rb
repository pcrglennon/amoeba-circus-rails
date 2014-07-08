require 'rails_helper'

RSpec.describe "amoebas/index", :type => :view do
  before(:each) do
    assign(:amoebas, [
      Amoeba.create!(
        :name => "Name",
        :generation => 1
      ),
      Amoeba.create!(
        :name => "Name",
        :generation => 1
      )
    ])
  end

  it "renders a list of amoebas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
