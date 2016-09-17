describe Users::VideosController, type: :request do
  describe 'GET /users/:user_id/videos' do
    before do
      create_list(:video, 3, user: user)
    end

    it 'create comment of video', autodoc: true do
      get "/users/#{user.id}/videos", headers: headers

      expect(response).to have_http_status(200)
    end
  end
end