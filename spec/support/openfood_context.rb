RSpec.shared_context 'openfood_context' do
  let(:barcode) { '049000061017' }
  let(:product) { 'Coca-Cola' }
  let(:openfood_response_body) { { product: { product_name_en: product } } }
  let(:openfood_response) { double('HTTP response', body: openfood_response_body.to_json) }

  before do
    allow(Faraday).to receive(:get).and_return(openfood_response)
  end
end
