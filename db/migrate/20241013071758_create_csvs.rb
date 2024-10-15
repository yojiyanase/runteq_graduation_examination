class CreateCsvs < ActiveRecord::Migration[7.0]
  def change
    create_table :csvs do |t|
      t.string :product_name
      t.date :reference_month
      t.decimal :price

      t.timestamps
    end
  end
end
