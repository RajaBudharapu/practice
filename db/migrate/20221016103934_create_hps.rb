class CreateHps < ActiveRecord::Migration[5.2]
  def change
    create_table :hps do |t|
      t.string :name
      t.string :colour

      t.timestamps
    end
  end
end
