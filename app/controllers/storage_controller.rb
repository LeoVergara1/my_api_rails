require './app/services/storage_service'
# Storage controller
class StorageController < ApplicationController
  def upload
    StorageService.new.download
  end

  def upload_file
    file = params['test'].open
    StorageService.new.upload_file(file)
  end
end
