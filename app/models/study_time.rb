class StudyTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '30分' },
    { id: 3, name: '1時間' },
    { id: 4, name: '1時間30分' },
    { id: 5, name: '2時間' },
    { id: 6, name: '2時間30分' },
    { id: 7, name: '3時間' },
    { id: 8, name: '3時間30分' },
    { id: 9, name: '4時間' },
    { id: 10, name: '4時間30分' },
    { id: 11, name: '5時間' },
    { id: 12, name: '5時間30分' },
    { id: 13, name: '6時間' },
    { id: 14, name: '6時間30分' },
    { id: 15, name: '7時間' },
    { id: 16, name: '7時間30分' },
    { id: 17, name: '8時間' },
    { id: 18, name: '8時間30分' },
    { id: 19, name: '9時間' },
    { id: 20, name: '9時間30分' },
    { id: 21, name: '10時間' },
    { id: 22, name: '10時間30分' },
    { id: 23, name: '11時間' },
    { id: 24, name: '11時間30分' },
    { id: 25, name: '12時間' },
    { id: 26, name: '12時間30分' },
    { id: 27, name: '13時間' },
    { id: 28, name: '13時間30分' },
    { id: 29, name: '14時間' },
    { id: 30, name: '14時間30分' },
  ]

  include ActiveHash::Associations
  has_many :posts
end