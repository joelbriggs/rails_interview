require 'rails_helper'

RSpec.describe FoodsController, type: :request do
  include_context 'openfood_context'

  let(:headers) { { Authorization: "Token #{TokenAuth::API_TOKEN}" } }
  let(:response_body) { JSON.parse(response.body) }
  let(:given_product) { response_body['product'] }
  let(:given_barcode) { response_body['barcode'] }

  before do
    get food_path(barcode: barcode), headers: headers
    expect(response).to have_http_status(:ok)
  end

  it 'returns the product name' do
    expect(given_product).to eq product
  end

  it 'returns the barcode' do
    expect(given_barcode).to eq barcode
  end
end
