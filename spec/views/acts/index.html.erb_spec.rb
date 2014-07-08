require 'rails_helper'

RSpec.describe "acts/index", :type => :view do
  before(:each) do
    assign(:acts, [
      Act.create!(
        :name => "Name"
      ),
      Act.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of acts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
