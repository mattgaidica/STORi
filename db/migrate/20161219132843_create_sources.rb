class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :image
      t.string :doi

      t.timestamps
    end
  end
end
