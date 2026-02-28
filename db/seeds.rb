User.find_or_create_by!(email: 'root@test.com') do |user|
  user.password = 'root1234'
end
