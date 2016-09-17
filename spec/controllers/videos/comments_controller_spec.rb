describe Videos::CommentsController, type: :request do
  describe 'POST /videos/:video_id/comments' do
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