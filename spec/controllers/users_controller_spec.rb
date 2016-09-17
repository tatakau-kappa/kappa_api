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
    let(:image_url) { 'https://facebook.com/hoge.jpg' }
    let(:name) { 'Kappa Taro' }

    before do
      allow_any_instance_of(ExternalProvider::Adapters::FacebookAdapter).to receive(:image_url).and_return(image_url)
      allow_any_instance_of(ExternalProvider::Adapters::FacebookAdapter).to receive(:name).and_return(name)
    end

    it 'sign up and sign in', autodoc: true do
      post '/login', params: params, headers: headers

      expect(response).to have_http_status(200)
    end
  end
end