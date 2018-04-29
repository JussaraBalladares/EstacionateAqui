class CreateDuenos < ActiveRecord::Migration[5.1]
  def change
    create_table :duenos do |t|

      t.timestamps
    end
  end
end
