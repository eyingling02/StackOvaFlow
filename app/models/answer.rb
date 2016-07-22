class Answer < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :answer
=======
  belongs_to :question
  belongs_to :user
  # Remember to create a migration!
>>>>>>> 2ff44017c18372f414e4ed4114a4f4bd035d6709
end
