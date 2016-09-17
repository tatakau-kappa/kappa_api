describe UsersController, type: :request do
  describe '/POST /login' do
    let(:params) do
      {
        id: 'facebook_id',
        provider: 'facebook',
        access_token: 'this_is_access_token'
      }
    end
    let(:authorization) { false }

    it 'sign up and sign in', autodoc: true do
      post '/login', params: params, headers: headers

      expect(response).to have_http_status(200)
    end
  end
end