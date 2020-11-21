FactoryBot.define do
  factory :post do
    association :user
    title { 'これはテストです' }
    budget_id { 1 }
    prefecture_id { 1 }
    transportation_id { 1 }
    explain { 'これは説明文です' }
    place { 'これは場所の説明です' }
    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
