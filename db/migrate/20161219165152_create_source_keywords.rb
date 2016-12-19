class CreateSourceKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :source_keywords do |t|
      t.references :source, foreign_key: true
      t.references :keyword, foreign_key: true

      t.timestamps
    end
  end
end
