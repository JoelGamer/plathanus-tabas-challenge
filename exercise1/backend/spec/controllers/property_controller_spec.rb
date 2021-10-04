# frozen_string_literal: true

require 'rails_helper'

controler_name = 'Properties'

RSpec.describe PropertiesController do
  describe "#{controler_name} index" do
    let!(:property) { create(:property) }

    it 'should list correctly' do
      get :index

      expect(response.status).to be(200)
      expect(json_response.length).to be(1)
    end
  end

  context "#{controler_name} show" do
    context 'with existing property' do
      let!(:property) { create(:property) }

      it 'should show correctly' do
        get :show, params: { id: property.id }

        expect(response.status).to be(200)
        expect(json_response).to include(
          'street' => property.street,
          'number' => property.number,
          'apartment' => property.apartment,
          'description' => property.description,
        )
      end
    end

    context 'with inexistent property' do
      let!(:property) { create(:property) }

      it 'should not show' do
        get :show, params: { id: property.id + 1 }

        expect(response.status).to be(404)
      end
    end
  end

  describe "#{controler_name} create" do
    context 'with correct params' do
      let(:params) do
        {
          property: {
            street: 'Street',
            number: 100,
            apartment: 404,
            description: 'Something',
          }
        }
      end

      it 'should create correctly' do
        post :create, params: params

        expect(response.status).to be(200)
        expect(json_response).to include(
          'street' => params[:property][:street],
          'number' => params[:property][:number],
          'apartment' => params[:property][:apartment],
          'description' => params[:property][:description],
        )
      end
    end

    context 'with incorrect params' do
      let(:params) do
        {
          property: {
            street: 'Street',
            apartment: 404,
            description: 'Something',
          }
        }
      end

      it 'should not create' do
        post :create, params: params

        expect(response.status).to be(400)
      end
    end
  end
end
