user = User.create!(
  email: 'test-user+1@medcare.jp',
  password: 'password',
  name: 'test-user',
  nickname: 'test'
)

10.times do
  Post.create(
    user: user,
    title: SecureRandom.hex(2),
    body: SecureRandom.hex(8)
  )
end