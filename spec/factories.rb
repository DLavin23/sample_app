FactoryGirl.define do
  factory User do
    name      "Michael Hartl"
    email     "michael@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end