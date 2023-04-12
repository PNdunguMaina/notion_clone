require 'rails_helper'

RSpec.describe "generators/index", type: :view do
  before(:each) do
    assign(:generators, [
      Generator.create!(
        index: "Index"
      ),
      Generator.create!(
        index: "Index"
      )
    ])
  end

  it "renders a list of generators" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Index".to_s), count: 2
  end
end
