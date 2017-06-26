class CreateFoundItems < ActiveRecord::Migration[5.1]
  def change
    create_table :found_items do |t|
      t.string :name
      t.text :description
      t.string :pic_url

      t.timestamps
    end
  end
end
