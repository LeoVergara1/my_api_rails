require "google/cloud/storage"

module StorageHelper
  @storage = Google::Cloud::Storage.new
  #@bucket = @storage.bucket "mn-campaigns"
  # Parse JSON response to ruby hash
  def upload_file(file)
    #file = @bucket.create_file file_name, "test_file.csv"
    @storage.bucket("mn-campaigns").file("test.txt").download
    file.upload_file file
  end
end