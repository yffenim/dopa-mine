class User < ApplicationRecord 
has_and_belongs_to_many :activities
has_many :comments, as: :commented_on


end
