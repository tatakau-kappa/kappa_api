describe MobileDevicesController, type: :request do
  describe 'GET /points' do
    it 'get docomo point', autodoc: true do
      get points_path, headers: headers

      expect(response).to have_http_status(200)
    end
  end
end