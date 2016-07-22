class Question < ActiveRecord::Base
  has_many :answers, as: :answerable
end
