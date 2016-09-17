describe Users::CommentsController, type: :request do
  describe '/GET /users/:user_id/videos/comments' do
    it 'create comment of video', autodoc: true do
      get comments_user_videos_path(user), headers: headers

      expect(response).to have_http_status(200)
    end
  end
end