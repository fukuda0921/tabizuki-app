class Period < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: '１ヶ月以内'},
    { id: 2, name: '２ヶ月〜３ヶ月以内'},
    { id: 3, name: '４ヶ月〜６ヶ月以内'},
    { id: 4, name: '１年以内'},
  ]
  include ActiveHash::Associations
  has_many :users
end
