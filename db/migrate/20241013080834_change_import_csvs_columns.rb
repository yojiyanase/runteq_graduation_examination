class ChangeImportCsvsColumns < ActiveRecord::Migration[7.0]
  def up
    change_column :import_csvs, :reference_month, :date
    rename_column :import_csvs, :reference_month, :date
  end

  def down
    change_column :import_csvs, :reference_month, :string
  end
end
