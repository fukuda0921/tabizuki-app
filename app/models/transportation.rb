class Transportation < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'}
    { id: 1, name: '徒歩'}
    { id: 2, name: '自転車'}
    { id: 3, name: '自動車'}
    { id: 4, name: '公共交通機関'}
  ]
  include ActiveHash::Associations
  has_many :posts
end
