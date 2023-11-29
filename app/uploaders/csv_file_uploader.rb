class CsvFileUploader < CarrierWave::Uploader::Base
  storage :file

  def extension_allowlist
    %w(csv)
  end
  
end
