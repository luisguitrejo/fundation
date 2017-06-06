class CreateAdquisicions < ActiveRecord::Migration[5.0]
  def change
    create_table :adquisicions do |t|
      t.date :fecha_compra
      t.float :monto
      t.text :cliente

      t.timestamps
    end
  end
end
