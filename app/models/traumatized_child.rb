class TraumatizedChild < ApplicationRecord
  belongs_to :child_actor
  has_many :cruel_aunts
end
