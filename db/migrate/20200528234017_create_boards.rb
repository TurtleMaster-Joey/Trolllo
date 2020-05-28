class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.has_many :lists

      t.timestamps
    end
  end
end
