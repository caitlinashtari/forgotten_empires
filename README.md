fill_in 'Name', :with => "Potatoe Empire"
select('Steam Technology', :from => 'Culture')
select('Neighborhood Watch', :from => 'Goverment')
select('Socialism', :from => 'Economy')
select('Desert', :from => 'Geography')
click_button '#create_nation'
  save_and_open_screenshot
