class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
    	t.text :quote_text
      t.string :quote_author

      t.timestamps
    end
  end
end
