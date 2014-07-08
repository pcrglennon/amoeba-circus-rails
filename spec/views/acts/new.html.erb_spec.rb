require 'rails_helper'

RSpec.describe "acts/new", :type => :view do
  before(:each) do
    assign(:act, Act.new(
      :name => "MyString"
    ))
  end

  it "renders new act form" do
    render

    assert_select "form[action=?][method=?]", acts_path, "post" do

      assert_select "input#act_name[name=?]", "act[name]"
    end
  end
end
