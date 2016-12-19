class Synonym < ApplicationRecord
  belongs_to :keyword_1, class_name: 'Keyword'
  belongs_to :keyword_2, class_name: 'Keyword'
end
