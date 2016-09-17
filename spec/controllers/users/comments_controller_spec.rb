describe Users::CommentsController, type: :request do
  describe 'GET /users/:user_id/videos/comments' do
    before do
      create_list(:video_comment, 3, user: user)
    end

    it 'create comment of video', autodoc: true do
      get comments_user_videos_path(user), headers: headers

      expect(response).to have_http_status(200)
    end
  end
end