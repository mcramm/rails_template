Factory.define :user do |f|
  f.sequence(:username) {|n| "foo#{n}"}
  f.sequence(:email) {|n| "foo#{n}@email.com"}
  f.password "foobar"
  f.password_confirmation {|u| u.password}
end