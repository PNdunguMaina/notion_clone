require 'rails_helper'

RSpec.describe 'generators/index', type: :view do
  it 'displays the front-end developer test project page' do
    render

    expect(rendered).to have_selector('section.d-flex.flex-column.align-items-center.justify-content-center.mt-5')
    expect(rendered).to have_selector('h1.border-bottom.border-2.fs-1.fw-bold.pb-3',
                                      text: 'Front-end developer test project')
    expect(rendered).to have_selector('p.main-txt',
                                      text: 'Your goal is to make a page that looks exactly this one, and has the ability to create H1 text simply by typing / then 1, then typing text, and hitting enter.')
    expect(rendered).to have_selector('section#container-wrapper.d-flex.flex-column.align-items-center.justify-content-center.mt-5')
    expect(rendered).to have_selector('div#container.input-container.w-100')
    expect(rendered).to have_selector('input#text-input.w-100.mt-5.p-0.opacity-40.fs-5[type="text"][placeholder="Type /1 followed by text..."][autofocus]')
  end
end
