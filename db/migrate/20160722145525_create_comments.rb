class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name_comment
      t.references :commentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
