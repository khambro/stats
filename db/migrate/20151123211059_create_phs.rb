class CreatePhs < ActiveRecord::Migration
  def change
    create_table :phs do |t|
      t.float :reading
      t.string :mood
      t.boolean :hangry

      t.timestamps null: false
    end
  end
end
