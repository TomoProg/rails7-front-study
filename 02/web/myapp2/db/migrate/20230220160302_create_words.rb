class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :japanese
      t.string :english

      t.timestamps
    end
  end
end
