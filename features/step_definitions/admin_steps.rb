Given /^an Admin user who is logged in$/ do
  @current_user = User.create!(
      :name => 'admin',
      :email => 'test@test.com',
      :login => 'admin',
      :password => 'monkey',
      :password_confirmation => 'monkey',
      :activated_at => '2009-02-22 12:13:59',
      :active => true,
      :activation_code => nil,
      :salt => '356a192b7913b04c54574d18c28d46e6395428ab',
      :crypted_password => 'df42adbd0b4f7d31af495bcd170d4496686aecb1',
      :created_at => '2009-02-22 12:13:59')
     visits "/session/new" 
     fills_in("login", :with => "admin") 
     fills_in("password", :with => "monkey") 
     clicks_button("Login")
end

Then /^there should be 1 author in the database$/ do
  user = Author.find(:all)
  user.size.should == 1
end
