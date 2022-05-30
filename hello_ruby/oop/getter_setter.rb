class Student

  # instance variable
  @first_name
  @last_name
  @email
  @username
  @password

  # setter example
  def first_name=(name)
    @first_name = name
  end

  # getter
  def first_name
    @first_name
  end

  def to_s
    "First name: #{@first_name}, Email: #{@email}"
  end

end

tommy = Student.new

tommy.first_name = "yiyi"
p tommy.first_name

p tommy

