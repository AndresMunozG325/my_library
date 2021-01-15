class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :status
      t.string :friendname
      t.date :lenddate
      t.date :returndate

      t.timestamps
    end
  end
end
