require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should not save without email" do
    user = User.new(:username => 'sam', :password => 'secret', :password_confirmation => 'secret')
    assert !user.save, "Saved user without an email!"
  end
  
  test "should not save without username" do
    user = User.new(:email => "sam@playitagain.com", :password => 'secret', :password_confirmation => 'secret')
    assert !user.save, "Saved user without an username!"
  end
  
  test "should not save with different passwords" do
    user = User.new(:username => 'sam',:email => "sam@playitagain.com", :password => 'secret', :password_confirmation => 'wrong_secret')
    assert !user.save, "Saved user with different!"
  end
  
  test "should not save if username already exists" do
    User.create!(:username => 'sam',:email => "sam@playitagain.com", :password => 'secret', :password_confirmation => 'secret')
    user = User.new(:username => 'sam',:email => "samuel@playitagain.com", :password => 'secret', :password_confirmation => 'secret')
    assert !user.save, "Saved a user with a username that already exists!"
  end
  
  test "should not save if email already exists" do
    User.create!(:username => 'sam',:email => "sam@playitagain.com", :password => 'secret', :password_confirmation => 'secret')
    user = User.new(:username => 'samuel',:email => "sam@playitagain.com", :password => 'secret', :password_confirmation => 'secret')
    assert !user.save, "Saved a user with an email that already exists!"
  end
  
end
