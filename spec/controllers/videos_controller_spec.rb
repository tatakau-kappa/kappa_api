describe VideosController, type: :request do
  describe 'GET /videos' do
    before do
      create_list(:video, 2)
      create(:video_comment)
    end

    let(:authorization) { false }

    it 'get videos', autodoc: true do
      get videos_path, headers: headers

      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /videos/:id' do
    let(:authorization) { false }
    let(:video) { create(:video) }

    it 'redirect video', autodoc: true do
      get video_path(video), headers: headers

      expect(response).to have_http_status(302)
    end
  end

  describe 'POST /videos' do
    let(:params) do
      {
        video_uid: "#{Devise.friendly_token[0,20]}.mp4",
        image_uid: "#{Devise.friendly_token[0,20]}.jpg",
        program_name: '番組名だよー'
      }
    end

    it 'create video', autodoc: true do
      post videos_path, params: params, headers: headers

      expect(response).to have_http_status(201)
    end
  end

  describe 'PUT /videos/:id' do
    let(:authorization) { false }
    let(:video) { create(:video) }
    let(:params) do
      {
        swapped_uid: "#{Devise.friendly_token[0,20]}.mp4",
        thumbnail_uid: "#{Devise.friendly_token[0,20]}.jpg"
      }
    end

    it 'update video for video server', autodoc: true do
      put video_path(video), params: params, headers: headers

      expect(response).to have_http_status(204)
    end
  end

  describe 'POST /videos/:id/remove_ad' do
    before do
      allow_any_instance_of(User).to receive(:current_point).and_return(100)
      allow_any_instance_of(Video).to receive(:remove_ad).and_return(video)
    end

    let(:video) { create(:video, user: user) }

    it 'remove ad', autodoc: true do
      post remove_ad_video_path(video), headers: headers

      expect(response).to have_http_status(204)
    end
  end
end