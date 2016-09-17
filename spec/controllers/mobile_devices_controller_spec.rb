describe MobileDevicesController, type: :request do
  describe 'POST /mobile_devices' do
    let(:params) do
      {
        device_token: Devise.friendly_token[0, 20],
        device_type: 'ios'
      }
    end

    it 'register mobile device token', autodoc: true do
      post mobile_devices_path, params: params, headers: headers

      expect(response).to have_http_status(204)
    end
  end
end