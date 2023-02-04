class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :type
      t.string :color
      t.string :cmc
      t.string :text
      t.string :flavour
      t.integer :power
      t.integer :toughness
      t.string :set
      t.boolean :rl

      t.timestamps
    end
  end
end
