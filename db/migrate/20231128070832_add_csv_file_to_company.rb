class AddCsvFileToCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :csv_file, :string
  end
end
