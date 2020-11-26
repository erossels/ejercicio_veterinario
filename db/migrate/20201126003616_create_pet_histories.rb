class CreatePetHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_histories do |t|
      t.float :weight
      t.string :height
      t.text :description
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
