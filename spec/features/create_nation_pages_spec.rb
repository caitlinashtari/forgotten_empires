require 'rails_helper'

describe 'create nations path' do
  it 'allows users to create a nation', js:true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit user_nations_path(user)
    click_link 'Create Your Empire'
    fill_in 'Name', :with => "Potatoe Empire"
    select('Steam Technology', :from => 'Culture')
    select('Neighborhood Watch', :from => 'Goverment')
    select('Socialism', :from => 'Economy')
    select('Desert', :from => 'Geography')
    click_on "Create Nation"
    expect(page).to have_content "Long live tyedye"



  end
end
