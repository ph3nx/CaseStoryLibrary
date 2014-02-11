class CreateCasestories < ActiveRecord::Migration
  def change
    create_table :casestories do |t|
      t.string :header
      t.string :segname
      t.string :custname
      t.string :countryname
      t.string :segurl
      t.string :custurl
      t.string :countryurl
      t.text :content
      t.string :imgurl

      t.timestamps
    end
  end
end
