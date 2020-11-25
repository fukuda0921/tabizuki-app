FactoryBot.define do
  factory :user do
    nickname { Faker::Movies::HarryPotter.character }
    email {Faker::Internet.free_email}
    password {'aaaaa9'}
    password_confirmation { password }
  end
end
