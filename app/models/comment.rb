class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  # Remember to create a migration!
end
