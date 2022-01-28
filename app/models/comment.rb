class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  # this allows is to access parent models using the comment.commentable relationship call
  
end
