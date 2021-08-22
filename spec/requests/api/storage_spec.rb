require 'swagger_helper'

RSpec.describe "Storages", type: :request do
  path '/storage' do
    post 'Upload file in storage' do
      tags 'Storage'
      consumes 'multipart/form-data'
      parameter name: :file, :in => :formData, :type => :file, required: true

      response '201', 'blog created' do
        let(:blog) { { title: 'foo', content: 'bar' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:blog) { { title: 'foo' } }
        run_test!
      end
    end
  end
end
