class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title 
      t.text :content 
      t.belongs_to :category, index: true 
      
      t.timestamps
    end
  end
end
