class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  # Remember to create a migration!
end
