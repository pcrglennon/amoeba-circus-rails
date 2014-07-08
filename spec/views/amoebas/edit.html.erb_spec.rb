require 'rails_helper'

RSpec.describe "amoebas/edit", :type => :view do
  before(:each) do
    @amoeba = assign(:amoeba, Amoeba.create!(
      :name => "MyString",
      :generation => 1
    ))
  end

  it "renders the edit amoeba form" do
    render

    assert_select "form[action=?][method=?]", amoeba_path(@amoeba), "post" do

      assert_select "input#amoeba_name[name=?]", "amoeba[name]"

      assert_select "input#amoeba_generation[name=?]", "amoeba[generation]"
    end
  end
end
