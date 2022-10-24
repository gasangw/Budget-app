require 'rails_helper'

RSpec.describe Group, Type: :model do
    before(:each) do
        @group = Group.create(name: 'samson', icon: 'https://www.google.com')
    end

    context 'It should have valid values' do
        it 'Is valid when name is not black' do
            @group.name = ''
            expect(@group).to_not be_valid 
        end

        it 'its invalid when the icon is not present' do
            @group.icon = ''
            expect(@group).to_not be_valid
        end
    end
end

# describe Group do
#     it { should have_many(:entity_groups) }
#     it { should have_many(:entities) }
#     it { should belong_to(:user) }
# end