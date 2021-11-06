users = [
    {username: "mashrur", password:"pass01"},
    {username: "tommy", password: "pass02"},
    {username: "kevin", password: "kevinpass"}
]

puts "Welcome to the authenticator!"
25.times {print "-"}

puts
puts "This program will take input from the user and compare password"
puts "If password is incorrect, you will get back the user object"

def auth_user(username, password, list_of_users)
    list_of_users.each do |user|
        if user[:username] == username && user[:password] == password
            return user
        end
    end
    "credentials were not correct" # implied return in the last line
end

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    result = auth_user(username, password, users)
    puts result
    puts "Press n to quit and other key to continue:"
    input = gets.chomp.downcase
    break if input == "n"
    attempts +=1
end
puts "you have exceeded the number of attempts"  # if attempts == 4 以目前的樣子 這邊不要 if 也可以跑進來.