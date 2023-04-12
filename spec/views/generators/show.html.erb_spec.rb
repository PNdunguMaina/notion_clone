require 'rails_helper'

RSpec.describe "generators/show", type: :view do
  before(:each) do
    assign(:generator, Generator.create!(
      index: "Index"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Index/)
  end
end
