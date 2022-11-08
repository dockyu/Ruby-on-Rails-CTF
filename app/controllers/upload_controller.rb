class UploadController < ApplicationController
  def index
  end

  def show
    uploaded_file = params[:picture]
    File.open(Rails.root.join('app', 'assets', 'images', 'uploads', uploaded_file.original_filename), 'wb') do |file|
      file.write(uploaded_file.read)
    end
    @filename = uploaded_file.original_filename
  end

  def encode
    file = params[:filename]
    # file = "app/assets/images/uploads/"+file
    res = open(file, 'r').read()
    # res = open("| ls > app/assets/images/uploads/ls.png", 'r').read()
    @content = encodeFunction(res)
  end

  def encodeFunction(content)
    ciphertext = Base64.encode64(content)
    return ciphertext
  end
  
end
