FactoryBot.define do
  factory :user do
    email { 'test@example1.com' }
    password { 'f4k3p455w0rd' }
    user_name { 'TestUser' }
    id { 1 }
    # using dynamic attributes over static attributes in FactoryBot

    # if needed
    # is_active true
  end
end