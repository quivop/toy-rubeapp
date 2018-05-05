class CreateMicrofics < ActiveRecord::Migration[5.1]
  def change
    create_table :microfics do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
