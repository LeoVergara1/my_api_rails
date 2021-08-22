require './app/services/storage_service.rb'
class StorageController < ApplicationController

  def upload
    StorageService.new.download
  end
end
