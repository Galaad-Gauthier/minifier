class CreateWebsites < ActiveRecord::Migration[5.0]

  def change
    create_table :websites do |t|
      t.string :token
      t.text :url
      t.timestamps
    end
  end

end
