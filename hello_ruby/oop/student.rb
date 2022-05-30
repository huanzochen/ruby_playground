class Student

  attr_accessor :first_name, :last_name, :email
  attr_reader :username
  attr_writer :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Email: #{@email}"
  end

  # probably similar like static functions
  def self.identify_yourself
    puts "Hey I am a Student class method"
  end

end

tommy = Student.new("tzuchuan", "huang", "tommy", "cy94295@gmail.com", "zaaa")
kevin = Student.new("tzuyuan", "huang", "kevin", "kevin@gmail.com", "bbfg")
p tommy
p kevin

Student.identify_yourself

# mashrur.first_name = "tommy"
# p tommy