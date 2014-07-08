require 'rails_helper'

RSpec.describe "acts/edit", :type => :view do
  before(:each) do
    @act = assign(:act, Act.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit act form" do
    render

    assert_select "form[action=?][method=?]", act_path(@act), "post" do

      assert_select "input#act_name[name=?]", "act[name]"
    end
  end
end
