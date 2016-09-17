module RequestHelper
  extend ActiveSupport::Concern

  included do
    let(:params) { {} }
    let(:specific_headers) { {} }
    let(:base_headers) do
      {
        'Content-Type' => 'application/json',
        'Accept'       => 'application/json'
      }
    end
    let(:headers) { base_headers.merge(authorization_headers).merge(specific_headers) }
    let(:authorization) { true }
    let(:authorization_headers) do
      authorization ? { 'Authorization' => user.access_token } : {}
    end
    let(:user) { FactoryGirl.create(:user) }
  end
end