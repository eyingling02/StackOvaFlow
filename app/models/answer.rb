class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :comments, class_name: "Answer", foreign_key: "answer_id"
end
