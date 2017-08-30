class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.text :in_order_to
      t.string :as
      t.text :i_want_to
      t.text :i_do
      t.text :this_happens
      t.integer :importance
      t.text :comments
      t.text :dev_comments
      t.integer :difficulty
      t.integer :story_kind
      t.integer :author

      t.timestamps
    end
  end
end
