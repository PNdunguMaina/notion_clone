require 'rails_helper'

RSpec.describe "generators/edit", type: :view do
  let(:generator) {
    Generator.create!(
      index: "MyString"
    )
  }

  before(:each) do
    assign(:generator, generator)
  end

  it "renders the edit generator form" do
    render

    assert_select "form[action=?][method=?]", generator_path(generator), "post" do

      assert_select "input[name=?]", "generator[index]"
    end
  end
end
