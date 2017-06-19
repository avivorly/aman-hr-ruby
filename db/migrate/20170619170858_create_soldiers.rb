class CreateSoldiers < ActiveRecord::Migration[5.0]
  def change
    create_table :soldiers do |t|
      t.text :name
      t.text :idd

      t.timestamps
    end
  end
end
