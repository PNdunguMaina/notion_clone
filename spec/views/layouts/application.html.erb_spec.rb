require 'rails_helper'

RSpec.describe 'layouts/application', type: :view do
  it 'displays the navbar correctly' do
    render
    
    expect(rendered).to have_selector('nav.navbar.navbar-expand-lg.m-4')
    expect(rendered).to have_selector('a.navbar-brand.fs-5.opacity-50[href="#"]', text: '>>')
    expect(rendered).to have_selector('button.navbar-toggler[type="button"][data-toggle="collapse"][data-target="#navbarSupportedContent"][aria-controls="navbarSupportedContent"][aria-expanded="false"][aria-label="Toggle navigation"]')
    expect(rendered).to have_selector('span.navbar-toggler-icon')
    expect(rendered).to have_selector('div.collapse.navbar-collapse#navbarSupportedContent')
    expect(rendered).to have_selector('ul.navbar-nav.mr-auto.opacity-50.fs-5')
    expect(rendered).to have_selector('li.nav-item.active')
    expect(rendered).to have_selector('a.nav-link[href="#"] i.fas.fa-book-open')
    expect(rendered).to have_selector('span.sr-only', text: '(current)')
    expect(rendered).to have_selector('li.nav-item')
    expect(rendered).to have_selector('a.nav-link[href="#"]', text: 'Main /')
    expect(rendered).to have_selector('li.nav-item')
    expect(rendered).to have_selector('a.nav-link[href="#"]', text: 'Getting started /')
    expect(rendered).to have_selector('li.nav-item')
    expect(rendered).to have_selector('a.nav-link[href="#"]', text: 'Front-end developer test project...')
    expect(rendered).to have_selector('ul.navbar-nav')
    expect(rendered).to have_selector('li.nav-item.active.opacity-50.fs-5')
    expect(rendered).to have_selector('a.nav-link[href="#"] img.unlock-img[alt="small logo"][class="unlock-img me-2 opacity-50"] + span', text: 'Editing')
    expect(rendered).to have_selector('li.nav-item.active')
    expect(rendered).to have_selector('select.space.form-select.border-0.text-primary.fw-bold.fs-5[name="space"][id="space"] option.my-2[value="1"][selected]', text: 'Publish Space')
    expect(rendered).to have_selector('option.my-2[value="2"]', text: 'Select 2')
    expect(rendered).to have_selector('option.my-2[value="3"]', text: 'Select 3')
    expect(rendered).to have_selector('option.my-2[value="4"]', text: 'Select 4')
  end
end