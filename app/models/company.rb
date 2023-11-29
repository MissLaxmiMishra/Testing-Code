class Company < ApplicationRecord

  mount_uploader :csv_file, CsvFileUploader
end