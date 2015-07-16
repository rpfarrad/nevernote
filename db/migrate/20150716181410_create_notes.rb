class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body_html
      t.text :body_text
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
