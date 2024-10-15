class RenameCsvsTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :csvs, :import_csvs
  end
end
