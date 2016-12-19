class Keyword < ApplicationRecord
  belongs_to :user
  has_many :synonyms
end
