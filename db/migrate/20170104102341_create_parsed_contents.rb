class CreateParsedContents < ActiveRecord::Migration[5.0]
  def change
    create_table :parsed_contents do |t|
      t.text :content
      t.text :url
      t.string :tag_type
      t.timestamps
    end
  end
end
