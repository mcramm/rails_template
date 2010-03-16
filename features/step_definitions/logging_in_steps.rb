Given /^I am not logged in$/ do
  if @current_user == nil
    true
  else
    false
  end
end

Given /^I have no users$/ do
  User.all.count == 0
end

Given /^the following (.+) records?$/ do |factory, table|
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end

Given /^a user named "([^\"]*)"$/ do |name|
  User.create(:username => name, :password => 'secret', :password_confirmation => 'secret', :email => 'mike@mcramm.com')
end
