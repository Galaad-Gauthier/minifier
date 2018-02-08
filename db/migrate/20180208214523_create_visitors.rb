class CreateVisitors < ActiveRecord::Migration[5.0]

  def change
    create_table :visitors do |t|
      t.belongs_to :website
      t.text :ip
      t.timestamps
    end
  end

end
