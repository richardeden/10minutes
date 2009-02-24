Then /^there should be 1 author in the database$/ do
  user = Author.find(:all)
  user.size.should == 1
end
