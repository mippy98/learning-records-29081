class StudyTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '30分', multiple: 30 },
    { id: 3, name: '1時間', multiple: 60 },
    { id: 4, name: '1時間30分', multiple: 90 },
    { id: 5, name: '2時間', multiple: 120 },
    { id: 6, name: '2時間30分', multiple: 150 },
    { id: 7, name: '3時間', multiple: 180 },
    { id: 8, name: '3時間30分', multiple: 210 },
    { id: 9, name: '4時間', multiple: 240 },
    { id: 10, name: '4時間30分', multiple: 270 },
    { id: 11, name: '5時間', multiple: 300 },
    { id: 12, name: '5時間30分', multiple: 330 },
    { id: 13, name: '6時間', multiple: 360 },
    { id: 14, name: '6時間30分', multiple: 390 },
    { id: 15, name: '7時間', multiple: 420 },
    { id: 16, name: '7時間30分', multiple: 450 },
    { id: 17, name: '8時間', multiple: 480 },
    { id: 18, name: '8時間30分', multiple: 510 },
    { id: 19, name: '9時間', multiple: 540 },
    { id: 20, name: '9時間30分', multiple: 570 },
    { id: 21, name: '10時間', multiple: 600 },
    { id: 22, name: '10時間30分', multiple: 630 },
    { id: 23, name: '11時間', multiple: 660 },
    { id: 24, name: '11時間30分', multiple: 690 },
    { id: 25, name: '12時間', multiple: 720 },
    { id: 26, name: '12時間30分', multiple: 750 },
    { id: 27, name: '13時間', multiple: 780 },
    { id: 28, name: '13時間30分', multiple: 810 },
    { id: 29, name: '14時間', multiple: 840 },
    { id: 30, name: '14時間30分', multiple: 870 },
  ]

  include ActiveHash::Associations
  has_many :posts
end