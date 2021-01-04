class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Ruby' },
    { id: 3, name: 'HTML・CSS' },
    { id: 4, name: 'JavaScript' },
    { id: 5, name: 'PHP' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end