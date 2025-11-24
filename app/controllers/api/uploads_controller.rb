class Api::UploadsController < ApplicationController
  require 'securerandom'
  require 'fileutils'
  def create
    uploaded_file = params[:file]
    return render json: { error: 'No file uploaded' }, status: :bad_request unless uploaded_file

    # Создаём папку public/tmp, если её нет
    tmp_dir = Rails.root.join('public', 'tmp')
    FileUtils.mkdir_p(tmp_dir)

    # Уникальное имя файла, чтобы не перезаписывать существующие
    filename = "contract_#{SecureRandom.hex(6)}.pdf"
    tmp_path = tmp_dir.join(filename)

    # Записываем файл побайтово
    File.open(tmp_path, 'wb') do |f|
      f.write(uploaded_file.read)
    end

    # Возвращаем публичный URL
    render json: { url: "/tmp/#{filename}" }, status: :ok
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end
end
