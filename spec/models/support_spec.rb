require 'rails_helper'

RSpec.describe Support, type: :model do
  context 'with Support' do
    let(:support) { FactoryBot.build(:support) }

    it 'get build json string' do
      expect(support.to_json).to be_a(String)
      expect(JSON.parse(support.to_json)).to have_key('os-family')
    end

    it 'get build json' do
      expect(support.as_json).to have_key('os-family')
    end
  end
end
