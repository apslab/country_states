class OptimizeMyRelations < ActiveRecord::Migration
  def self.up
    add_index :states, :country_id
  end

  def self.down
    remove_index :states, :country_id
  end
end

