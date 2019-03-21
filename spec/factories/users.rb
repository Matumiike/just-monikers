FactoryBot.define do
  factory :user do
    name { "MyString" }
    group { nil }
    connection_status { nil }
    public_key { "MyString" }
  end
end
