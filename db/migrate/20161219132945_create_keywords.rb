class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.references :user, foreign_key: true
      t.string :word

      t.timestamps
    end
  end
end
