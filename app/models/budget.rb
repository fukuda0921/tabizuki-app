class Budget < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: '〜10,000円'},
    { id: 2, name: '10,000円〜20,000円'},
    { id: 3, name: '20,000〜40,000円'},
    { id: 4, name: '40,000円〜50,000円'},
    { id: 5, name: '50,000円以上'}
  ]
  include ActiveHash::Associations
  has_many :posts
end