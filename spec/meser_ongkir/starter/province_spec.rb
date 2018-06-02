# frozen_string_literal: true

RSpec.describe MeserOngkir::Starter::Province do
  describe 'should get all listed province' do
    let(:provinces) { MeserOngkir::Starter::Province.all }

    it { expect(provinces).to include('rajaongkir') }

    it { expect(provinces['rajaongkir']).to include('query') }
    it { expect(provinces['rajaongkir']['query']).to eql [] }

    it { expect(provinces['rajaongkir']).to include('status') }
    it { expect(provinces['rajaongkir']['status']).to include('code') }
    it { expect(provinces['rajaongkir']['status']).to include('description') }
    it { expect(provinces['rajaongkir']['status']['code']).to be_truthy }
    it { expect(provinces['rajaongkir']['status']['description']).to be_truthy }
    it { expect(provinces['rajaongkir']['status']['code']).to eql(200) }
    it { expect(provinces['rajaongkir']['status']['description']).to eql('OK') }

    it { expect(provinces['rajaongkir']).to include('results') }
    it { expect(provinces['rajaongkir']['results'][0]).to include('province_id') }
    it { expect(provinces['rajaongkir']['results'][0]).to include('province') }

    context 'check all provinces' do
      it do
        provinces['rajaongkir']['results'].each do |result|
          expect(result['province_id']).to be_truthy
          expect(result['province']).to be_truthy
        end
      end
    end
  end

  describe 'should get single province' do
    let(:id) { '1' }
    let(:province) { MeserOngkir::Starter::Province.find(id) }

    it { expect(province).to include('rajaongkir') }

    it { expect(province['rajaongkir']).to include('query') }
    it { expect(province['rajaongkir']['query']).to eql('id' => id) }

    it { expect(province['rajaongkir']).to include('status') }
    it { expect(province['rajaongkir']['status']).to include('code') }
    it { expect(province['rajaongkir']['status']).to include('description') }
    it { expect(province['rajaongkir']['status']['code']).to be_truthy }
    it { expect(province['rajaongkir']['status']['description']).to be_truthy }
    it { expect(province['rajaongkir']['status']['code']).to eql(200) }
    it { expect(province['rajaongkir']['status']['description']).to eql('OK') }

    it { expect(province['rajaongkir']).to include('results') }
    it { expect(province['rajaongkir']['results']).to include('province_id') }
    it { expect(province['rajaongkir']['results']).to include('province') }

    it { expect(province['rajaongkir']['results']['province_id']).to be_truthy }
    it { expect(province['rajaongkir']['results']['province']).to be_truthy }
  end
end
