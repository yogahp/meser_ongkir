require 'pry'

RSpec.describe MeserOngkir::Starter::City do
  describe 'should get all listed city' do
    let(:cities) { MeserOngkir::Starter::City.all }

    it { expect(cities).to include('rajaongkir') }

    it { expect(cities['rajaongkir']).to include('query') }
    it { expect(cities['rajaongkir']['query']).to eql [] }

    it { expect(cities['rajaongkir']).to include('status') }
    it { expect(cities['rajaongkir']['status']).to include('code') }
    it { expect(cities['rajaongkir']['status']).to include('description') }
    it { expect(cities['rajaongkir']['status']['code']).to be_truthy }
    it { expect(cities['rajaongkir']['status']['description']).to be_truthy }
    it { expect(cities['rajaongkir']['status']['code']).to eql(200) }
    it { expect(cities['rajaongkir']['status']['description']).to eql('OK') }

    it { expect(cities['rajaongkir']).to include('results') }
    it { expect(cities['rajaongkir']['results'][0]).to include('city_id') }
    it { expect(cities['rajaongkir']['results'][0]).to include('province_id') }
    it { expect(cities['rajaongkir']['results'][0]).to include('province') }
    it { expect(cities['rajaongkir']['results'][0]).to include('type') }
    it { expect(cities['rajaongkir']['results'][0]).to include('city_name') }
    it { expect(cities['rajaongkir']['results'][0]).to include('postal_code') }

    context 'check all cities' do
      it do
        cities['rajaongkir']['results'].each do |result|
          expect(result['city_id']).to be_truthy
          expect(result['province_id']).to be_truthy
          expect(result['province']).to be_truthy
          expect(result['type']).to be_truthy
          expect(result['city_name']).to be_truthy
          expect(result['postal_code']).to be_truthy
        end
      end
    end
  end

  describe 'should get single province (find by id)' do
    let(:id) { '1' }
    let(:city) { MeserOngkir::Starter::City.find_by(id: id) }

    it { expect(city).to include('rajaongkir') }

    it { expect(city['rajaongkir']).to include('query') }
    it { expect(city['rajaongkir']['query']).to eql('id' => id) }

    it { expect(city['rajaongkir']).to include('status') }
    it { expect(city['rajaongkir']['status']).to include('code') }
    it { expect(city['rajaongkir']['status']).to include('description') }
    it { expect(city['rajaongkir']['status']['code']).to be_truthy }
    it { expect(city['rajaongkir']['status']['description']).to be_truthy }
    it { expect(city['rajaongkir']['status']['code']).to eql(200) }
    it { expect(city['rajaongkir']['status']['description']).to eql('OK') }

    it { expect(city['rajaongkir']).to include('results') }
    it { expect(city['rajaongkir']['results']).to include('province_id') }
    it { expect(city['rajaongkir']['results']).to include('province') }

    it { expect(city['rajaongkir']['results']['city_id']).to be_truthy }
    it { expect(city['rajaongkir']['results']['province_id']).to be_truthy }
    it { expect(city['rajaongkir']['results']['province']).to be_truthy }
    it { expect(city['rajaongkir']['results']['type']).to be_truthy }
    it { expect(city['rajaongkir']['results']['city_name']).to be_truthy }
    it { expect(city['rajaongkir']['results']['postal_code']).to be_truthy }
  end

  describe 'should get single province (find by province id)' do
    let(:id) { '1' }
    let(:province_id) { '21' }
    let(:city) { MeserOngkir::Starter::City.find_by(id: id, province_id: province_id) }

    it { expect(city).to include('rajaongkir') }

    it { expect(city['rajaongkir']).to include('query') }
    it { expect(city['rajaongkir']['query']).to eql('id' => id, 'province_id' => province_id) }

    it { expect(city['rajaongkir']).to include('status') }
    it { expect(city['rajaongkir']['status']).to include('code') }
    it { expect(city['rajaongkir']['status']).to include('description') }
    it { expect(city['rajaongkir']['status']['code']).to be_truthy }
    it { expect(city['rajaongkir']['status']['description']).to be_truthy }
    it { expect(city['rajaongkir']['status']['code']).to eql(200) }
    it { expect(city['rajaongkir']['status']['description']).to eql('OK') }

    it { expect(city['rajaongkir']).to include('results') }
    it { expect(city['rajaongkir']['results']).to include('province_id') }
    it { expect(city['rajaongkir']['results']).to include('province') }

    it { expect(city['rajaongkir']['results']['city_id']).to be_truthy }
    it { expect(city['rajaongkir']['results']['province_id']).to be_truthy }
    it { expect(city['rajaongkir']['results']['province']).to be_truthy }
    it { expect(city['rajaongkir']['results']['type']).to be_truthy }
    it { expect(city['rajaongkir']['results']['city_name']).to be_truthy }
    it { expect(city['rajaongkir']['results']['postal_code']).to be_truthy }
  end
end
