require 'rails_helper'

describe 'create nations path' do
  it 'allows users to create a nation', js:true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_user_nation_path(user)
    fill_in 'Name', :with => "Potatoe Empire"
    select('Steam Technology', :from => 'Culture')
    select('Neighborhood Watch', :from => 'Goverment')
    select('Socialism', :from => 'Economy')
    select('Desert', :from => 'Geography')
    click_button '#create_nation'
      save_and_open_screenshot
    expect(page).to have_content "Long live tyedye, long live Potatoe Empire"



  end
end
