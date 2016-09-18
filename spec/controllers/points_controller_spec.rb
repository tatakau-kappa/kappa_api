describe MobileDevicesController, type: :request do
  describe 'GET /points' do
    before do
      current_point = double('current_point')
      body          = double('body')
      allow(body).to receive(:to_json).and_return('{"point":' + point.to_s +   '}')
      allow(current_point).to receive(:body).and_return(body)
      allow_any_instance_of(DocomoPoint::Client).to receive(:current_point).and_return(current_point)
    end

    let(:point) { 1560 }

    it 'get docomo point', autodoc: true do
      get points_path, headers: headers

      expect(response).to have_http_status(200)
    end
  end
end