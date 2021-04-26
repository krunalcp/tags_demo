class AddSiteIdAndContextIntoTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :tags, :site, foreign_key: true, null: true
    add_column :tags, :context, :string, limit: 191

    add_index :tags, [:site_id, :name, :context], unique: true
  end
end
