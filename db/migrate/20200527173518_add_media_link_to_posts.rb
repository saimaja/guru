class AddMediaLinkToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :media_link, :string
  end
end
