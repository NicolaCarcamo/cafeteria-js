class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :blend
      t.string :origin
      t.string :variety
      t.string :commentary
      t.string :intesifier

      t.timestamps
    end
  end
end
