require "google/cloud/storage"

class StorageService
  attr_reader :storage
  attr_reader :bucket

  def initialize
    @storage = Google::Cloud::Storage.new
    @bucket = @storage.bucket "mn-campaigns"
  end

  def download
    file = @bucket.file "test.txt"
    file.download "./test.txt"
    puts "Downloaded #{file.name}"
  end
end