describe Users::VideosController, type: :request do
  let(:headers) do
    {
      'Content-Type': 'application/json',
      'Authorization': user.access_token
    }
  end

  let(:user) { create(:user) }

  describe '/GET /users/:user_id/videos' do
    it 'create comment of video', autodoc: true do
      get "/users/#{user.id}/videos", headers: headers

      expect(response).to have_http_status(200)
    end
  end
end