class CreateStags < ActiveRecord::Migration[5.0]
  def change
    create_table :stags do |t|
      t.text :key
      t.text :value
      t.references :soldier

      t.timestamps
    end
  end
end
