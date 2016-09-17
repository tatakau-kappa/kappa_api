describe Videos::CommentsController, type: :request do
  let(:headers) do
    {
      'Content-Type': 'application/json',
      'Authorization': user.access_token
    }
  end

  let(:user) { create(:user) }

  describe '/POST /videos/:video_id/comments' do
    let(:video) { create(:video) }
    let(:params) do
      { contents: 'コメントだよー' }
    end

    it 'create comment of video', autodoc: true do
      post "/videos/#{video.id}/comments", params: params, headers: headers

      expect(response).to have_http_status(201)
    end
  end
end