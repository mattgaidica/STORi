class CreateAnnotations < ActiveRecord::Migration[5.0]
  def change
    create_table :annotations do |t|
      t.references :source, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
