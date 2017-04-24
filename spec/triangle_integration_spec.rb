require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('display triangle results',{:type =>:feature})do
  it('send info to the results page')do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '2')
    click_button('Calculate!')
    expect(page).to have_content("equilateral")
  end
end
