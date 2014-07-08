require 'rails_helper'

RSpec.describe "amoebas/new", :type => :view do
  before(:each) do
    assign(:amoeba, Amoeba.new(
      :name => "MyString",
      :generation => 1
    ))
  end

  it "renders new amoeba form" do
    render

    assert_select "form[action=?][method=?]", amoebas_path, "post" do

      assert_select "input#amoeba_name[name=?]", "amoeba[name]"

      assert_select "input#amoeba_generation[name=?]", "amoeba[generation]"
    end
  end
end
