require 'rails_helper'

RSpec.describe 'group_entities/edit', type: :view do
  let(:group_entity) do
    GroupEntity.create!(
      group: nil,
      entity: nil
    )
  end

  before(:each) do
    assign(:group_entity, group_entity)
  end

  it 'renders the edit group_entity form' do
    render

    assert_select 'form[action=?][method=?]', group_entity_path(group_entity), 'post' do
      assert_select 'input[name=?]', 'group_entity[group_id]'

      assert_select 'input[name=?]', 'group_entity[entity_id]'
    end
  end
end
