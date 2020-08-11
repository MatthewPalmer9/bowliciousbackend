class CreateProducts < ActiveRecord::Migration[6.0]
    def change
        create_table :products do |t|
            t.string :title
            t.string :img
            t.string :category
            t.string :info
            t.boolean :inCart
            t.integer :price 

            t.timestamps
        end 
    end 
end 