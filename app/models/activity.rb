class Activity < ApplicationRecord
has_and_belongs_to_many :users
has_many :dopamine_points
has_many :comments, as: :commented_on

end
