class UploadController < ApplicationController
  def index
  end

  def show
    uploaded_file = params[:picture]
    filename_hash = d = DateTime.now.strftime("%d%m%Y%H%M")+".png"
    File.open(Rails.root.join('app', 'assets', 'images', 'uploads', filename_hash), 'wb') do |file|
      file.write(uploaded_file.read)
    end
    @filename = filename_hash
  end

  def encode
    file = params[:filename]
    res = open(file, 'r').read()
    @content = encodeFunction(res)
  end

  def encodeFunction(content)
    ciphertext = Base64.encode64(content)
    return ciphertext
  end
  
end
