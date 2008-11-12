class CreateOptionTypes < ActiveRecord::Migration
  def self.up
    create_table :option_types do |t|
      t.string, :name
      t.string :of_type

      t.timestamps
    end
  end

  def self.down
    drop_table :option_types
  end
end
