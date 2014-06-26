class CreateUserBlogs < ActiveRecord::Migration
  def change
    create_table :user_blogs do |t|
      t.text :message
      t.references :user, polymorphic: true, index: true

      t.timestamps
    end
  end
end