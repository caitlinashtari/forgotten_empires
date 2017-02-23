FactoryGirl.define do
  factory(:user) do
    user_name("tyedye")
    email("a@b.com")
    password("123456")
  end

  factory(:nation) do
    name('Test Nation')
    culture('Steam Technology')
    govt('Democracy')
    econ('Capitalism')
    geo('Desert')
  end

end
