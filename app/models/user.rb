class User < ActiveRecord::Base
<<<<<<< HEAD
  has_many :questions
  has_many :answers
=======
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_many :questions
  has_many :answers

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
>>>>>>> 2ff44017c18372f414e4ed4114a4f4bd035d6709
end
