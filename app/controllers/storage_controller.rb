require './app/helpers/storage_helper.rb'
class StorageController < ApplicationController
  def upload
    helpers.upload_file("README.md")
  end
end
