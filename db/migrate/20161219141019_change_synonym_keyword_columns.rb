class ChangeSynonymKeywordColumns < ActiveRecord::Migration[5.0]
  def change
  	rename_column :synonyms, :keyword_1, :keyword_1_id
  	rename_column :synonyms, :keyword_2, :keyword_2_id
  end
end
