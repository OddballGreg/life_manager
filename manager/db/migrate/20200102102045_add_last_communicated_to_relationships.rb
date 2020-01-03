class AddLastCommunicatedToRelationships < ActiveRecord::Migration[6.0]
  def change
    add_column :relationships, :last_communicated, :datetime
  end
end
