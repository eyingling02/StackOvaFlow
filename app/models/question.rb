class Question < ActiveRecord::Base
<<<<<<< HEAD
  has_many :answers
  belongs_to :user
=======
  # Remember to create a migration!
  belongs_to :user
  has_many :answers
>>>>>>> 2ff44017c18372f414e4ed4114a4f4bd035d6709
end
