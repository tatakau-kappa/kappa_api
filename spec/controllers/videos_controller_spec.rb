describe VideosController, type: :request do
  describe '/GET /videos' do
    it 'get videos', autodoc: true do
      get videos_path, headers: headers

      expect(response).to have_http_status(200)
    end
  end

  describe '/GET /videos/:id' do
    let(:video) { create(:video) }

    it 'get video', autodoc: true do
      get video_path(video), headers: headers

      expect(response).to have_http_status(200)
    end
  end

  describe '/POST /videos' do
    let(:params) do
      { original_uid: Devise.friendly_token[0,20] }
    end

    it 'create video', autodoc: true do
      post videos_path, params: params, headers: headers

      expect(response).to have_http_status(201)
    end
  end

  describe '/PUT /videos/:id' do
    let(:authorization) { false }
    let(:video) { create(:video) }
    let(:params) do
      {
        swapped_uid: Devise.friendly_token[0,20],
        thumbnail_uid: Devise.friendly_token[0,20]
      }
    end

    it 'update video', autodoc: true do
      put video_path(video), params: params, headers: headers

      expect(response).to have_http_status(204)
    end
  end
end