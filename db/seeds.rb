p "create Users"
User.create!(
  email: 'user1@example.com',
  password: 'aaaaaa',
  name: 'Oliver',
  self_introduction: 'Nice to meet you! His name is Oliver. I love to cook. I will be using this app to post recipes in the future. Thank you for your support.',
  speciality: 1,
  image: open("#{Rails.root}/db/dummy_img/1.jpeg")
)
User.create!(
  email: 'user2@example.com',
  password: 'aaaaaa',
  name: 'Harry',
  self_introduction: 'Nice to meet you! His name is Harry. I love to cook. I will be using this app to post recipes in the future. Thank you for your support.',
  speciality: 2,
  image: open("#{Rails.root}/db/dummy_img/2.jpeg")
)
User.create!(
  email: 'user3@example.com',
  password: 'aaaaaa',
  name: 'Olivia',
  self_introduction: 'Nice to meet you! His name is Olivia. I love to cook. I will be using this app to post recipes in the future. Thank you for your support.',
  speciality: 3,
  image: open("#{Rails.root}/db/dummy_img/3.jpeg")
)
User.create!(
  email: 'user4@example.com',
  password: 'aaaaaa',
  name: 'Lilly',
  self_introduction: 'Nice to meet you! His name is Lilly. I love to cook. I will be using this app to post recipes in the future. Thank you for your support.',
  speciality: 4,
  image: open("#{Rails.root}/db/dummy_img/4.jpeg")
)