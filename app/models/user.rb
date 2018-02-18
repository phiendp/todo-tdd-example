class User
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def todos
    Todo.where(email: email)  
  end

  def sign_in?
    email.present?
  end
end
