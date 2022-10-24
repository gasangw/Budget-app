require 'rails_helper'

RSpec.describe Entity, Type: :model do
    before(:each) do
        @entity = Entity.create(name: 'Timothy', amount: 28.5)
    end

    describe 'it should have valid values' do
        it 'the entity should have a name' do
            @entity.name = ''
            expect(@entity).to_not be_valid
        end

        it 'amount should be greater than zero' do 
            @entity.amount = 0
            expect(@entity).to_not be_valid
        end
    end 
end