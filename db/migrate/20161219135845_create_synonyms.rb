class CreateSynonyms < ActiveRecord::Migration[5.0]
  def change
    create_table :synonyms do |t|
      t.integer :keyword_1, foreign_key: true
      t.integer :keyword_2, foreign_key: true
      t.float :strength

      t.timestamps
    end
  end
end
