require 'google/cloud/storage'
# Class to managment services with google storage
class StorageService
  attr_reader :storage, :bucket

  def initialize
    @storage = Google::Cloud::Storage.new
    @bucket = @storage.bucket 'mn-campaigns'
  end

  def download
    file = @bucket.file 'test.txt'
    file.download './test.txt'
    puts "Downloaded #{file.name}"
  end

  def upload_file(file)
    @bucket.create_file file, "Otro.csv"
  end
end
